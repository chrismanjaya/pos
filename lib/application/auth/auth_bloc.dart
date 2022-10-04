import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/user_model.dart';
import 'package:pos/domain/services/auth/auth_services.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthServices _authServices;

  AuthBloc(this._authServices) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      signIn: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );

        // Validate Sign In
        final signIn = await _authServices.signIn(e.email, e.password);
        if (signIn.isLeft()) {
          // Unauthenticate
          yield state.copyWith(
            isLoading: false,
            isAuthenticate: false,
            errorMessage: signIn.fold((l) => l, (r) => null),
          );
        } else {
          // Authenticate
          yield state.copyWith(
            isLoading: false,
            isAuthenticate: true,
            errorMessage: "",
          );
        }
      },
      authCheck: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        //await new Future.delayed(const Duration(seconds: 15));
        final result = await _authServices.checkAuth();
        if (result.isLeft()) {
          // Unauthenticate
          yield state.copyWith(
            isLoading: false,
            isAuthenticate: false,
          );
        } else {
          // Authenticate
          yield state.copyWith(
            isLoading: false,
            isAuthenticate: true,
          );
        }
      },
      getUserInfo: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final result = await _authServices.getUserData();
        if (result.isLeft()) {
          yield state.copyWith(
            isLoading: false,
            isAuthenticate: false,
            errorMessage: result.fold((l) => l, (r) => null),
          );
        } else {
          UserModel userModel = result.fold((l) => null, (data) => data);
          yield state.copyWith(
            isLoading: false,
            isLoaded: true,
            userModel: userModel,
          );
        }
      },
      signOut: (e) async* {
        await _authServices.signOut();
        yield state.copyWith(
          userModel: UserModel.empty(),
          isLoading: false,
          isLoaded: false,
          isAuthenticate: false,
          errorMessage: "",
        );
      },
      branchChanged: (e) async* {
        yield state.copyWith(
          userModel: state.userModel.copyWith(
            branch: e.branchModel,
          ),
        );
      },
    );
  }
}
