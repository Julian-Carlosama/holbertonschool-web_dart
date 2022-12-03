class User {

  // User properties
  int id;
  String name;
  int age;
  double height;

  // Constructor that initializes class properties. 
  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height});

  // New instance that return each value maped
  static User fromJson(Map<dynamic, dynamic> userJson) => User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height']);

  // Method that return a map representation of the User
  Map toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
      };

  // Override existing method
  String toString() =>
      'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
}
