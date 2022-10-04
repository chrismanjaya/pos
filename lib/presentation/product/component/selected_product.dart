import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pos/domain/model/privilege_model.dart';
import 'package:pos/presentation/core/utils.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/product/component/selected_product_button.dart';
import 'package:pos/presentation/product/component/selected_product_header.dart';
import 'package:pos/presentation/product/component/selected_product_textbox_discount.dart';
import 'package:pos/presentation/product/component/selected_product_textbox_name.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/product/product_bloc.dart';
import 'package:pos/presentation/product/component/selected_product_textbox_price.dart';
import 'package:pos/application/auth/auth_bloc.dart';

class SelectedProduct extends StatelessWidget {
  const SelectedProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _node = FocusScope.of(context);
    AuthBloc _authBloc = context.read<AuthBloc>();
    bool isAuthorizedChange = false;
    for (PrivilegeModel privilegeModel
        in _authBloc.state.userModel.group.listPrivilege) {
      if (privilegeModel.menuCode == 5 &&
          Utils().isEqualsIgnoreCase(privilegeModel.action, "Change")) {
        isAuthorizedChange = true;
      }
    }

    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      return Container(
          padding: EdgeInsets.fromLTRB(
            sPaddingContainer,
            sPaddingContainer,
            sPaddingContainer,
            0,
          ),
          child: Column(
            children: <Widget>[
              SelectedProductHeader(
                isAuthorizedChange: isAuthorizedChange,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // Textbox: Product Name
                          SelectedProductTextboxName(
                            node: _node,
                            title: textProductNameLabel,
                            value: state.selectedProduct.name,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Product Price
                          SelectedProductTextboxPrice(
                            node: _node,
                            title: textProductPriceLabel,
                            value: state.selectedProduct.price,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Textbox: Product Discount
                          SelectedProductTextboxDiscount(
                            node: _node,
                            title: textProductDiscountLabel,
                            value: state.selectedProduct.discount,
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                          // Buttons
                          SelectedProductButton(
                            isAuthorizedChange: isAuthorizedChange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
