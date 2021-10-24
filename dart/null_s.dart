import 'dart:io';

void main() {
  print("Enter a number: ");
  int? a = int.parse(stdin.readLineSync()!);
  print(a.runtimeType);
}
