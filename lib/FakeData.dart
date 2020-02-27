import 'dart:convert';

import 'package:http/http.dart' as http;

class Users {
  dynamic data;
  Users.fromJson(this.data);
}

Future<Users> fetchPost(http.Client client) async {
  final response =
      await client.get('https://jsonplaceholder.typicode.com/users/1');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Users.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load users');
  }
}
