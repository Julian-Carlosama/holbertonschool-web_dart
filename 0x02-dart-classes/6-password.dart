class Password {
  // Private property
  String _password = '';

  // Constructor that define the private properties
  Password({required String password}) : _password = password;

  // Get Method that allow access to private properties
  String get password => _password;

  // Set Method that allow set private properties
  set password(String passw) => _password = passw;

  bool isValid() {
    return ((this.password.length >= 8 && this.password.length <= 16) &&
            this.password.contains(RegExp(r'[A-Z]')) &&
            this.password.contains(RegExp(r'[a-z]')) &&
            this.password.contains(RegExp(r'[0-9]'))
        ? true
        : false);
  }

  // Override existing method
  String toString() => 'Your Password is: ${this.password}';
}

