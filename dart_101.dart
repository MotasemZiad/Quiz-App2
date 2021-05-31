main(List<String> args) {
  var name = "Motasem Abu Nema";
  var age = 21;
  var p = Person(name: 'Ahmed Fawzy', age: 28, salary: 256.23);

  var isLoggedIn = false;
  var username = "Max Lackner";
  var password = '123456';

  bool hasCorrectCredentials =
      username == 'Max Lackner' && password == '123456';

  if (hasCorrectCredentials) {
    print("Logged in...");
  } else {
    print("Failed!");
  }

  // var std = Person.student("Ahmed Khaleel", 23);
  // var emp = Person.employee("Iyad Al-Agha", 2359.93);

  // print("Student Name: ${std.name}\nStudent Age: ${std.age}");
  // print("Employee Name: ${emp.name}\nEmployee Salary: ${emp.salary}");

  // print(p.toString());

  // print("My name's $name, I'm $age years old.");

  // print(addNumbers(23, 12));
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}

class Person {
  String _name;
  int _age;
  double _salary;

  Person({String name, int age, double salary}) {
    this._name = name;
    this._age = age;
    this._salary = salary;
  }

  Person.employee(String name, double salary) {
    this._name = name;
    this._salary = salary;
  }

  Person.student(String name, int age) {
    this._name = name;
    this._age = age;
  }

  String get name => _name;
  int get age => _age;
  double get salary => _salary;

  void setName(String name) => _name = name;
  void setAge(int age) => _age = age;
  void setSalary(double salary) => _salary = salary;

  @override
  String toString() {
    return 'Name: $name\nAge: $age\nSalary: $salary';
  }
}
