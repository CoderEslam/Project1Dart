void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  // variables
  var d = 53;
  int age = 25;
  print(age);
  String name = "Eslam";
  print(name);
  // name = 26; //A value of type 'int' can't be assigned to a variable of type 'String'.
  print(name);
  print(name + age.toString());

  bool isRight = true;
  print(isRight);

  dynamic F_L_name = "EslamGhazy";
  print(F_L_name);
  F_L_name = 52;
  print(F_L_name);
  // methods
  print(Sum());
  print(SumArrow());

  int div = Div(10, 5).toInt();
  print(div);

//Lists
  List names = ['eslam', 'alaa', 'ghazy'];
  names.add('Android Developer');
  names.add(25.toString());

  for (int i = 0; i < names.length; i++) {
    print('hello ${names[i]}');
  }
  for (String s in names) {
    print(s);
  }
  print(names);

  List<String> namesss = [];
  namesss.add("adnvsbs");
  namesss.add("klsbn");
  namesss.add(";aj");
  namesss.add("s'[pfk");
  // namesss.add(56);//  The argument type 'int' can't be assigned to the parameter type 'String'.

  print(namesss);

  // instance of class
  User user1 = User('eslamAlaaGhazy', 52);
  user1.login();
  print(user1.username);
  print(user1.age);

  User user2 = User('AhmedGhazy', 125);
  user2.login();
  print(user2.username);
  print(user2.age);
  user2.S();
  user2.sub();

  Employee().f();
}

int Sum() {
  return 5 + 6;
}

// arrow funcation
int SumArrow() => 5 + 6;

double Div(int n1, int n2) {
  return n1 / n2;
}

class User extends Math {
  // identifiers that start with an underscore _ are visible only inside the library.
  String username;

  int age;

  void login() {
    print('user logged in');
  }

  User(this.username, this.age);

  int S() {
    var s = Sum();
    print(s);
    return s;
  }

  void sub() {
    print(Sub());
  }

// User() {
//   this.username = "Eslam";
//   this.age = 25;
// }
}

// suber Class
class Math {
  int Sum() {
    return 5 + 6;
  }

  int Sub() {
    return 6 - 5;
  }
}

class Employee extends User {
  int f() {
    var s = S();
    print(s);
    return s;
  }

  Employee() : super("", 5); // super => is User and User Class has constractor
}
