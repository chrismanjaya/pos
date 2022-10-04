import 'package:flutter/material.dart';
import 'package:pos/application/branch/branch_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedBranchTextboxAddress extends StatelessWidget {
  const SelectedBranchTextboxAddress({
    Key key,
    @required this.node,
    @required this.title,
    @required this.value,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final FocusScopeNode node;
  final String title;
  final String value;
  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    _controller.text = value;
    _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length));
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: sPaddingContainer),
            child: Text(
              title,
              style: yTextBold,
            ),
          ),
          TextFormField(
            enabled: isAuthorizedChange,
            maxLines: 5,
            controller: _controller,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onChanged: (value) {
              context
                  .read<BranchBloc>()
                  .add(BranchEvent.changeSelectedAddress(value));
            },
            onEditingComplete: () => node.nextFocus(),
            style: (isAuthorizedChange) ? yTextNormal : yTextDisabled,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: sPaddingBody, horizontal: sPaddingBody),
              filled: true,
              fillColor: kSecondColor,
              enabledBorder: yBorderNormal,
              disabledBorder: yBorderDisabled,
              focusedBorder: yBorderFocus,
              errorBorder: yBorderError,
              focusedErrorBorder: yBorderError,
              hintText: textHintText + title.toLowerCase(),
              hintStyle: yTextboxHint,
            ),
          ),
          SizedBox(
            height: sPaddingBody,
          )
        ],
      ),
    );
  }
}
