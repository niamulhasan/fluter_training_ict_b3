import 'dart:io';

class Global {
  String? mainMenu() {
    print(
        " 1. Login as admin. \n 2. Login as user \nPlease choose an option: ");
    return stdin.readLineSync();
  }
}
