import '6-password.dart';

// Copy the last task and this extends the Password class
class User extends Password {
  // User properties
  int id;
  String name;
  int age;
  double height;
  String user_password = '';

  // Constructor that initializes class properties.
  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height,
      required this.user_password})
      : super(password: user_password);

  // New instance that return each value maped
  static User fromJson(Map<dynamic, dynamic> userJson) => User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: '');

  // Method that return a map representation of the User
  Map toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
      };

  // Override existing method
  String toString() {
    final pwd = Password(password: this.user_password);

    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${pwd.isValid()})';
  }
}
