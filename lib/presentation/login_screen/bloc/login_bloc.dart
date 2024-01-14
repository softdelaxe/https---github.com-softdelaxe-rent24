import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rent24/presentation/login_screen/models/login_model.dart';
part 'login_event.dart';
part 'login_state.dart';

/// A bloc that manages the state of a Login according to the event that is dispatched to it.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<LoginButtonPressedEvent>(_onLoginButtonPressed);

  }

  _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    // Perform initialization logic here
    LoginModel initialModel= LoginModel(
      username: "default_username",
      password: "default_password",
    );
    emit(LoginState(loginModelObj: initialModel));

  }

  _onLoginButtonPressed(
      LoginButtonPressedEvent event,
      Emitter<LoginState> emit,
      )async{

  }


}
