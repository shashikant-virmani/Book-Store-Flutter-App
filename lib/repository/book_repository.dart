import 'dart:convert';

// import 'package:book_discovery/models/catalog.dart';
import 'package:http/http.dart' as http;

class BookRepository {

  Future<dynamic> fetchBooks(String url) async {

    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200) {
      dynamic jsonResponse = jsonDecode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Something went wrong.');
    }
  }
}
