import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/sign_in/sign_in_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';

class FormTextBoxEmail extends StatelessWidget {
  final FocusScopeNode node;

  const FormTextBoxEmail({
    Key key,
    this.node,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) => Container(
        child: TextFormField(
          onChanged: (value) =>
              context.read<SignInBloc>().add(SignInEvent.emailChanged(value)),
          onEditingComplete: () => node.nextFocus(),
          validator: (_) => (state.errorEmailMessage.isEmpty)
              ? null
              : state.errorEmailMessage,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          style: yTextbox,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            filled: true,
            fillColor: kPrimaryColor,
            enabledBorder: yBorderNormal,
            focusedBorder: yBorderFocus,
            errorBorder: yBorderError,
            focusedErrorBorder: yBorderError,
            hintText: textFieldEmailHint,
            hintStyle: yTextboxHint,
            prefixIcon: Icon(
              Icons.person,
              size: sIconTextbox,
              color: kFourColor,
            ),
          ),
        ),
      ),
    );
  }
}
