part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState{}

class SignUpFailed extends SignUpState{
  String provider;
  String reason;

  SignUpFailed({required this.provider, required this.reason});
}

class ShowDialogOnScreen extends SignUpState{

  ShowDialogOnScreen();
}

class SignUpLackOfDetails extends SignUpState{
  String field;

  SignUpLackOfDetails({required this.field});
}

// Successful state for GoogleSignIn
class SignUpCompleted extends SignUpState {
  final String displayName;
  final String email;
  final String? photoUrl;

  SignUpCompleted({required this.displayName, required this.email, required this.photoUrl});
}
