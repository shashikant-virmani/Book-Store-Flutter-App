import 'package:book_discovery/models/catalog.dart';
import 'package:book_discovery/repository/book_repository.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

class BookProvider with ChangeNotifier {
  final _bookRepo = BookRepository();

  final List<BookData> _books = [];
  bool _isLoading = false;
  bool _hasMore = true;
  String url = 'https://gutendex.com/books/';

  List<BookData> get books => _books;
  bool get isLoading => _isLoading;
  bool get hasMore => _hasMore;

  Future<void> fetchBooks() async {
    if (_isLoading || !_hasMore) return;

    _isLoading = true;
    notifyListeners();

    try {
      dynamic jsonResponse = await _bookRepo.fetchBooks(url);
      List<BookData> newBooks = List.from(jsonResponse["results"]).map<BookData>((book) => BookData.fromMap(book)).toList();

      if (newBooks.isEmpty) {
        _hasMore = false;
      } else {
        _books.addAll(newBooks);
        url = jsonResponse['next'];
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching books: $e");
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}