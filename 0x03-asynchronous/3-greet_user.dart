import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() {
    try {
        return fectchUserData().then((data) {
            var userName = json.decode(data)['username'];
            return 'Hello $userName';
        });
    } catch (err) {
        return Future.error('error caught: $err');
    }
}

Future<String> loginUser() async {
    if (await checkCredentials()) {
        return greetUser();
    } else {
        return Future.error('Wrong credentials');
    }
}
