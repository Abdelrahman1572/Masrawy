import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cash_helper.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);
  String userId = '';
  void userMakLogin({required String email, required String password}) async {
    emit(AuthGetUserAfterLoginLoadingState());
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userId = value.user!.uid;
      CacheHelper.saveData(key: 'uid', value: '${value.user!.uid}');
      emit(AuthGetUserAfterLoginSuccessgState());
    }).catchError((error) {
      if (error.code == 'user-not-found') {
        emit(AuthGetUserAfterLoginErrorState(
            error: 'No user found for that email.'));
        return;
      } else if (error.code == 'wrong-password') {
        emit(AuthGetUserAfterLoginErrorState(error: 'Invalid Account'));
        return;
      } else if (error.code == 'invalid-email') {
        emit(AuthGetUserAfterLoginErrorState(error: 'Invalid Email'));
        return;
      } else if (error.code == 'user-disabled') {
        emit(AuthGetUserAfterLoginErrorState(error: 'User is disabled'));
        return;
      } else if (error.code == 'too-many-requests') {
        emit(AuthGetUserAfterLoginErrorState(
            error: 'Too many requests. Try again later.'));
        return;
      } else {
        emit(AuthGetUserAfterLoginErrorState(error: error.message));
        return;
      }
    });
  }
  void userMakRegister({required String username,required String email, required String password}) async {
    emit(AuthGetUserAfterRegisterSuccessgState());
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userId = value.user!.uid;
      CacheHelper.saveData(key: 'uid', value: '${value.user!.uid}');
      emit(AuthGetUserAfterRegisterSuccessgState());
    }).catchError((error) {
      if (error.code == 'user-not-found') {
        emit(AuthGetUserAfterResisterErrorState(
            error: 'No user found for that email.'));
        return;
      } else if (error.code == 'wrong-password') {
        emit(AuthGetUserAfterResisterErrorState(error: 'Invalid Account'));
        return;
      } else if (error.code == 'invalid-email') {
        emit(AuthGetUserAfterResisterErrorState(error: 'Invalid Email'));
        return;
      } else if (error.code == 'user-disabled') {
        emit(AuthGetUserAfterResisterErrorState(error: 'User is disabled'));
        return;
      } else if (error.code == 'too-many-requests') {
        emit(AuthGetUserAfterResisterErrorState(
            error: 'Too many requests. Try again later.'));
        return;
      } else {
        emit(AuthGetUserAfterResisterErrorState(error: error.message));
        return;
      }
    });
  }
  void userMakLoginAnonymous() async{
    emit(AuthGetUserAfterLoginAsAnonymousLoadingState());
    await FirebaseAuth.instance.signInAnonymously();
  }
  void userMakLogOut() async{
    emit(AuthGetUserLogOutLoadingState());
    await FirebaseAuth.instance.signOut();
  }
}
