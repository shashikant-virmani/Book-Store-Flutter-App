class CatalogModel {

}

class BookData {
  final int id;
  final String title;
  final List<dynamic> subjects;
  final List<dynamic> authors;
  final List<dynamic> summaries;
  final List<dynamic> translators;
  final List<dynamic> bookshelves;
  final List<dynamic> languages;
  final dynamic copyright;
  final String media_type;
  final Map<String, dynamic> formats;
  final num download_count;

  // "id": <number of Project Gutenberg ID>,
  // "title": <string>,
  // "subjects": <array of strings>,
  // "authors": <array of Persons>,
  // "summaries": <array of strings>,
  // "translators": <array of Persons>,
  // "bookshelves": <array of strings>,
  // "languages": <array of strings>,
  // "copyright": <boolean or null>,
  // "media_type": <string>,
  // "formats": <Format>,
  // "download_count": <number

  BookData({required this.id, required this.title, required this.subjects, required this.authors, required this.summaries, required this.translators, required this.bookshelves, required this.languages, required this.copyright, required this.media_type, required this.formats, required this.download_count});
  factory BookData.fromMap(Map<String, dynamic> map) { return
    BookData(id: map["id"], 
    title: map["title"],
     subjects: map["subjects"], 
    authors: map["authors"], summaries: map["summaries"], translators: map["translators"], 
    bookshelves: map["bookshelves"], languages: map["languages"], copyright: map["copyright"], media_type: map["media_type"], 
    formats: map["formats"], download_count: map["download_count"], 
    );
  }
}

class Person {
  final dynamic birth_year;
  final dynamic death_year;
  final String name;

  Person({required this.birth_year, required this.death_year, required this.name});
}

// class Format {
//   final List<Map<String, String>> formats;

//   Format({required this.formats});
// }