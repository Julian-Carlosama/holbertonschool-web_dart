String longestUniqueSubstring(String str) {
  var long = '';
  var current = '';

  for (var i = 0; i < str.length; i++) {
    if (current.contains(str[i]))
      current = '';
    current += str[i];

    if (current.length > long.length)
      long = current;
  }
  return long;
}
