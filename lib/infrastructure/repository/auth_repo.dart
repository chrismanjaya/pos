import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pos/infrastructure/failure/firebase_auth_failure.dart';

class AuthRepo {
  final FirebaseAuth _firebaseAuth;

  AuthRepo(
    this._firebaseAuth,
  );

  Future<Either<String, UserCredential>> registration(
    String email,
    String password,
  ) async {
    try {
      final UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return right(userCredential);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "weak-password":
          return left(FirebaseAuthFailure.WEAK_PASSWORD);
        case "email-already-in-use":
          return left(FirebaseAuthFailure.EMAIL_ALREADY_EXIST);
        default:
          return left(FirebaseAuthFailure.SERVER_ERROR);
      }
    } catch (exception) {
      return left(FirebaseAuthFailure.EXCEPTION_ERROR);
    }
  }

  Future<Either<String, Unit>> resetPassword(
    String email,
  ) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "weak-password":
          return left(FirebaseAuthFailure.WEAK_PASSWORD);
        case "email-already-in-use":
          return left(FirebaseAuthFailure.EMAIL_ALREADY_EXIST);
        default:
          return left(FirebaseAuthFailure.SERVER_ERROR);
      }
    } catch (exception) {
      return left(FirebaseAuthFailure.EXCEPTION_ERROR);
    }
  }

  Future<Either<String, Unit>> signIn(
    String email,
    String password,
  ) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case "wrong-password":
          return left(FirebaseAuthFailure.INVALID_COMBINATION);
        case "user-not-found":
          return left(FirebaseAuthFailure.INVALID_COMBINATION);
        case "too-many-requests":
          return left(FirebaseAuthFailure.INVALID_COMBINATION);
        default:
          return left(FirebaseAuthFailure.SERVER_ERROR);
      }
    } catch (exception) {
      return left(FirebaseAuthFailure.EXCEPTION_ERROR);
    }
  }

  Future<Either<String, Unit>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return right(unit);
    } catch (error) {
      return left(error.toString());
    }
  }

  Future<Either<String, User>> getCurrentUser() async {
    try {
      final User firebaseuser = _firebaseAuth.currentUser;
      if (firebaseuser == null) {
        return left("Firebase Current User is Not Found");
      } else {
        return right(firebaseuser);
      }
    } catch (error) {
      return left(FirebaseAuthFailure.EXCEPTION_ERROR);
    }
  }
}
