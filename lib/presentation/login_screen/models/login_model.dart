// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoginModel extends Equatable {
  final String username;
  final String password;

  LoginModel({required this.username, required this.password});

  LoginModel copyWith({
    String? username,
    String? password
}) {
    return LoginModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [username, password];
}
