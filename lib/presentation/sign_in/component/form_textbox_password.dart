import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/sign_in/sign_in_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';

class FormTextBoxPassword extends StatelessWidget {
  final FocusScopeNode node;

  const FormTextBoxPassword({
    Key key,
    this.node,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        bool _isObscureText = state.isObscureText;
        return Container(
          child: TextFormField(
            onChanged: (value) => context
                .read<SignInBloc>()
                .add(SignInEvent.passwordChanged(value)),
            onFieldSubmitted: (_) => node.unfocus(),
            validator: (_) => (state.errorPasswordMessage.isEmpty)
                ? null
                : state.errorPasswordMessage,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            style: yTextbox,
            obscureText: _isObscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              filled: true,
              fillColor: kPrimaryColor,
              enabledBorder: yBorderNormal,
              focusedBorder: yBorderFocus,
              errorBorder: yBorderError,
              focusedErrorBorder: yBorderError,
              hintText: textFieldPasswordHint,
              hintStyle: yTextboxHint,
              prefixIcon: Icon(
                Icons.vpn_key,
                size: sIconTextbox,
                color: kFourColor,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  node.unfocus();
                  node.canRequestFocus = false;
                  _isObscureText = !_isObscureText;
                  context
                      .read<SignInBloc>()
                      .add(SignInEvent.obscureTextChanged(_isObscureText));
                  node.canRequestFocus = true;
                },
                icon: (_isObscureText)
                    ? Icon(
                        Icons.lightbulb_outline,
                        size: sIconTextbox,
                        color: kFourColor,
                      )
                    : Icon(
                        Icons.lightbulb,
                        size: sIconTextbox,
                        color: kAccentColor,
                      ),
                tooltip: (_isObscureText)
                    ? textTooltipShowPassword
                    : textToolTipHidePassword,
              ),
            ),
          ),
        );
      },
    );
  }
}
