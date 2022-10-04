import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pos/domain/services/sign_in/sign_in_services.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInServices _signInService;

  SignInBloc(this._signInService) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield _signInService.validateEmail(e.email).fold(
              (l) => state.copyWith(
                email: e.email,
                errorEmailMessage: l,
              ),
              (r) => state.copyWith(
                email: e.email,
                errorEmailMessage: "",
              ),
            );
      },
      passwordChanged: (e) async* {
        yield _signInService.validatePassword(e.password).fold(
              (l) => state.copyWith(
                password: e.password,
                errorPasswordMessage: l,
              ),
              (r) => state.copyWith(
                password: e.password,
                errorPasswordMessage: "",
              ),
            );
      },
      obscureTextChanged: (e) async* {
        yield state.copyWith(
          isObscureText: e.isObscureText,
        );
      },
    );
  }
}
