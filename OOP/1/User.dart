import 'dart:io';

class User {
  String name = "rahim";
  String password = "12345";
  String secret = "Super secret for the user";

  void login() {
    print("Enter your name: ");
    String? inputUserName = stdin.readLineSync();
    print("Enter your password: ");
    String? inputUserPassword = stdin.readLineSync();

    if (inputUserName == name && inputUserPassword == password) {
      print("Login Successful");
      print(secret);
    } else {
      print("Loging failed");
    }
  }
}
