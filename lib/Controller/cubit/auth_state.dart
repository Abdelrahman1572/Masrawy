abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthGetUserAfterLoginLoadingState extends AuthState {}

class AuthGetUserAfterLoginSuccessgState extends AuthState {}

class AuthGetUserAfterLoginErrorState extends AuthState {
  final String error;
  AuthGetUserAfterLoginErrorState({required this.error});
}

class AuthGetUserAfterRegisterLoadingState extends AuthState {}

class AuthGetUserAfterRegisterSuccessgState extends AuthState {}

class AuthGetUserAfterResisterErrorState extends AuthState {
  final String error;
  AuthGetUserAfterResisterErrorState({required this.error});
}


class AuthGetUserAfterLoginAsAnonymousLoadingState extends AuthState {}
class AuthGetUserAfterLoginAsAnonymousSuccessgState extends AuthState {}

class AuthGetUserLogOutLoadingState extends AuthState {}
class AuthGetUserLogOutSuccessgState extends AuthState {}