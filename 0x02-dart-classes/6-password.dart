class Password {
  // Private property
  String _password = '';

  // Constructor that define the private properties
  Password({required String password}) : _password = password;

  // Get Method that allow access to private properties
  String get passw => _password;

  // Set Method that allow set private properties
  set password(String passw) => _password = passw;

  bool isValid(userJson) {
    return ((this.passw.length >= 8 && this.passw.length <= 16) &&
            this.passw.contains(RegExp(r'[A-Z]')) &&
            this.passw.contains(RegExp(r'[a-z]')) &&
            this.passw.contains(RegExp(r'[0-9]'))
        ? true
        : false);
  }

  // Override existing method
  String toString() => 'Your Password is: ${this.passw}';
}

