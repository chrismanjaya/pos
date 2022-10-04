import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/sign_in/sign_in_bloc.dart';
import 'package:pos/application/auth/auth_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';

class FormButton extends StatelessWidget {
  final bool isSubmitting;

  const FormButton({Key key, this.isSubmitting}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Container(
        height: sButtonForm,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (state.errorEmailMessage.isEmpty &&
                  state.errorPasswordMessage.isEmpty &&
                  state.email.isNotEmpty &&
                  state.password.isNotEmpty)
              ? () {
                  context
                      .read<AuthBloc>()
                      .add(AuthEvent.signIn(state.email, state.password));
                }
              : null,
          style: yButtonForm,
          child: (isSubmitting) ? _buttonLoading() : _textButton(),
        ),
      ),
    );
  }

  Container _buttonLoading() {
    return Container(
      height: sIcon,
      width: sIcon,
      child: CircularProgressIndicator(
        backgroundColor: Colors.transparent,
        valueColor: const AlwaysStoppedAnimation<Color>(kPrimaryColor),
        strokeWidth: sLineThick,
      ),
    );
  }

  Text _textButton() {
    return Text(
      textButtonSignIn,
      style: yTextButton,
    );
  }
}
