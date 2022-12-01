String longestPalindrome(String s) {
  if (s.length < 3) return 'none';

  String long = '';
  String current = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
    }
  }
  return long;
}
