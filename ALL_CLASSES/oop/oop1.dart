class User {
  String? name;
  String? email;
  String? pass;
  int? salOld;
  int? salNew;

  User({
    required String this.name,
    required String this.email,
    required String this.pass,
    required int this.salOld,
    required int this.salNew,
  });

  int calcSal() {
    int? diff = salNew! - salOld!;
    return diff;
  }

  void printProfile([String customText = ""]) {
    print("--Profile----");
    print("Name: ${name} \nEmail: ${email} \nIncrement: ${calcSal()}");
    print(customText);
    print("----\n\n");
  }
}

void main() {
  User user1 = User(
    email: "mizmail",
    name: "Miraz",
    pass: "1234",
    salOld: 20000,
    salNew: 10000,
  );
  user1.printProfile();

  User user2 = User("Rubayet", "rubmail", "12345", 40000, 30000);
  user2.printProfile("Prop");
}
