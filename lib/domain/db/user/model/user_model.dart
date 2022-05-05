import 'dart:io';

class User {
  final String email;
  final String password;
  final String? name;
  final String? surname;
  final String? number;
  final File? avatar; 
  User(
      {required this.email,
      required this.password,
      this.name,
      this.surname,
      this.number,
      this.avatar});
}
