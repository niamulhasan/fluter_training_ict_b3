
void main() {
  List<Map<String, dynamic>> userList = [
    {
      "name" : "Rahim",
      "age" : 21,
      "email" : "rahim@email.com",
      "transaction" : [0, 5, 3, 5]
    },
    {
      "name" : "Karim",
      "age" : 25,
      "email" : "karim@email.com",
      "transaction" : [10, 50]
    },
    {
      "name" : "Hassan",
      "age" : 43,
      "email" : "hassan@email.com",
      "transaction" : [60, 15, 33, 99]
    }
  ];
  
  for(int i=0; i<userList.length; i++){
    print("Profile: ${i+1} -----------");
    print("      Name : ${userList[i]["name"]}");
    print("      Age : ${userList[i]["age"]}");
    print("      E-mail : ${userList[i]["email"]}");
    print("      Transaction:-----------");
    
    for(int j=0; j<userList[i]["transaction"].length; j++){
      print("        ${j+1} : ${userList[i]["transaction"][j]}");
    }
    print("\n");
  }
  
}
