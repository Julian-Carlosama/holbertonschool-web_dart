class Password {
  String password = '';

  bool isValid() {
    return ((this.password.length >= 8 && this.password.length <= 16) &&
            this.password.contains(RegExp(r'[A-Z]')) &&
            this.password.contains(RegExp(r'[a-z]')) &&
            this.password.contains(RegExp(r'[0-9]'))
        ? true
        : false);
  }

  String toString() => 'Your Password is: ${this.password}';
}
