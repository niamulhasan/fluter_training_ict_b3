import 'dart:io';

class Admin {
  String name = "admin";
  String password = "12345";
  String secret = "Super secret for the admin";

  void login() {
    print("Enter your admin name: ");
    String? inputAdminName = stdin.readLineSync();
    print("Enter your password: ");
    String? inputAdminPassword = stdin.readLineSync();

    if (inputAdminName == name && inputAdminPassword == password) {
      print("Login Successful for admin");
      print(secret);
    } else {
      print("Loging failed");
    }
  }
}
