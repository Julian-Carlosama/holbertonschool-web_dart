class Password {
  // Private property
  String _password = '';
  // Constructor that define the private properties
  Password({required String password}) : _password = password;
  // Method that allow access to private properties 
  String get passw => _password;

  bool isValid() {
    return ((this.passw.length >= 8 && this.passw.length <= 16) &&
            this.passw.contains(RegExp(r'[A-Z]')) &&
            this.passw.contains(RegExp(r'[a-z]')) &&
            this.passw.contains(RegExp(r'[0-9]'))
        ? true
        : false);
  }

  String toString() => 'Your Password is: ${this.passw}';
}
