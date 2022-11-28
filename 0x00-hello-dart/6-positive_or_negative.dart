void main(List<String> args) {
  var numb = int.parse(args[0]);

  print(numb == 0 ? '$numb is zero' : numb > 0 ? '$numb is positive' : '$numb is negative');  
}
