import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchFeed() async {
  final response = await http.get('http://newsletter-revels.herokuapp.com/');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return json.decode(response.body)['data'];
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('Failed to load album');
  }
}