import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/sign_in/component/form_button.dart';
import 'package:pos/presentation/sign_in/component/form_header.dart';
import 'package:pos/presentation/sign_in/component/form_input.dart';
import 'package:pos/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSubmitting = false;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isLoading) {
          isSubmitting = true;
        } else {
          isSubmitting = false;
          if (state.isAuthenticate) {
            ExtendedNavigator.of(context).replace(Routes.homePage);
          }
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kUIDangerColor,
                duration: dSlow,
                content: Text(state.errorMessage),
                action: SnackBarAction(
                  label: "close",
                  textColor: kTextPrimaryColor,
                  onPressed: () {},
                ),
              ),
            );
          }
        }
      },
      builder: (context, state) => SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(sPaddingBody),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Logo
                Expanded(
                  flex: 1,
                  child: Container(
                    width: sImage,
                    height: sImage,
                    child: Image(
                      image: AssetImage(pathIconLauncher),
                    ),
                  ),
                ),
                // Box SignIn
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Form SignIn
                      Container(
                        padding: EdgeInsets.all(sPaddingBody),
                        decoration: BoxDecoration(
                          color: kSecondColor,
                          borderRadius: borderRadius,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Title
                            FormHeader(),
                            SizedBox(
                              height: sPaddingBody,
                            ),
                            // Form
                            FormInput(),
                            SizedBox(
                              height: sPaddingBody,
                            ),
                            // Button
                            FormButton(isSubmitting: isSubmitting),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sPaddingBody,
                      ),
                      // Copyright
                      Container(
                        child: Text(
                          textCopyright,
                          style: yTextMini,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
