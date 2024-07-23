import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

//for clicking icons
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  void signupWithGithub() {
    //can't sign up with Github
    emit(SignUpFailed(provider:'Github', reason: 'error'));
  }

  // void signupWithGoogle() {
  //   //can't sign up with Google
  //   emit(SignUpFailed(provider:'Google', reason: 'error'));
  // }
  void signupWithLinkedin() {
    //can't sign up with Linkedin
    emit(SignUpFailed(provider:'Linkedin', reason: 'error'));
  }

  void SignUpWithoutName() {
    emit(SignUpLackOfDetails(field: 'Name'));
  }

  void SignUpWithoutEmail() {
    emit(SignUpLackOfDetails(field: 'Email'));
  }

  void SignUpWithoutPassword() {
    emit(SignUpLackOfDetails(field: 'Password'));
  }
  void showDialogEvent() {
    emit(ShowDialogOnScreen());
  }


  Future<void> signupWithGoogle() async {
    final GoogleSignIn googleSignIn =
    GoogleSignIn(scopes: ['email', 'profile']);
    GoogleSignInAccount? googleUser;
    try {
      googleUser = await googleSignIn.signIn();
    } on PlatformException catch (e) {
      emit(SignUpFailed(provider:'Google', reason: e.toString()));
      return;
    }

    if (googleUser == null) {
      emit(SignUpFailed(provider:'Google', reason: 'User cancel'));
      return;
    }

    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;

    final OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      final UserCredential userCredential =
      await firebaseAuth.signInWithCredential(oAuthCredential);
      final User? user = userCredential.user;

      if (user == null) {
        emit(SignUpFailed(provider:'Google', reason: 'Unable to sign up to Firebase'));
        return;
      }

      emit(SignUpCompleted(displayName: user.displayName ?? user.email ?? '', photoUrl: user.photoURL, email: user.email ?? ''));
    } on FirebaseAuthException catch (e) {
      emit(SignUpFailed(provider:'Google', reason: 'Failed to sign up to Firebase ${e.toString()}'));
    } catch (e) {
      emit(SignUpFailed(provider:'Google', reason: 'Failed to sign up to Firebase ${e.toString()}'));
    }
  }
}