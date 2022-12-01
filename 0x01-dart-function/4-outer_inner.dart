void outer(String name, String id) {
  String inner(String name, String id) {
    String nameSeparate = name.split(' ')[0];

    String latest =
        name.substring(name.indexOf(' ') + 1, name.indexOf(' ') + 2);

    return 'Hello Agent $latest.$nameSeparate your id is $id';
  }

  print(inner(name, id));
}
