// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
import 'package:equatable/equatable.dart';

class SignUpModel extends Equatable {
 final String fullName;
 final String email;
 final String companyPhoneNumber;
 final String state;
 final String lga;
 final String city;
 final String address;
 final String password;

 SignUpModel({
  required this.fullName,
  required this.email,
  required this.companyPhoneNumber,
  required this.state,
  required this.lga,
  required this.city,
  required this.address,
  required this.password,
 });

 SignUpModel copyWith({
  String? fullName,
  String? email,
  String? companyPhoneNumber,
  String? state,
  String? lga,
  String? city,
  String? address,
  String? password,
 }) {
  return SignUpModel(
   fullName: fullName ?? this.fullName,
   email: email ?? this.email,
   companyPhoneNumber: companyPhoneNumber ?? this.companyPhoneNumber,
   state: state ?? this.state,
   lga: lga ?? this.lga,
   city: city ?? this.city,
   address: address ?? this.address,
   password: password ?? this.password,
  );
 }

 @override
 List<Object?> get props => [
  fullName,
  email,
  companyPhoneNumber,
  state,
  lga,
  city,
  address,
  password,
 ];
}

