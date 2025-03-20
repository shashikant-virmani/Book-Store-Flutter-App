import 'dart:convert';

import 'package:book_discovery/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  static List<BookData> books = [];

  void _getBooks() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    var decodedData = jsonDecode(catalogJson);
    // print(decodedData);
    // books = BookModel.getBooks();
    books = List.from(decodedData["results"]).map<BookData>((book) => BookData.fromMap(book)).toList();
    setState(() {
      
    });
  }

  @override
  void initState() {
    super.initState();
    _getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color.fromARGB(255, 250, 208, 238),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 20),
              child: Text('Books List',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),),
              SizedBox(height: 15,),
              SizedBox(
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Image.network(books[index].formats["image/jpeg"]!),
                          title: Text(books[index].title),
                          subtitle: Text((index + 1).toString()),
                        ),
                      );
                  }),
                )
              )

            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              hintText: 'Search Book, Author..',
              hintStyle: TextStyle(
                color: Color(0xffDDDADA),
                // fontSize: 14,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset('assets/icons/search.svg', width: 2, height: 2,),
              ),
              suffixIcon: SizedBox(
                width: 50,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        indent: 10,
                        endIndent: 10,
                        thickness: 0.4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,),
                        child: SvgPicture.asset('assets/icons/filter.svg', width: 20, height: 20,),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Book  Store',
      style: TextStyle(color: Colors.purple, fontSize: 34, fontWeight: FontWeight.bold),),
      backgroundColor: Colors.lightGreenAccent,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          
        },
      child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 138, 255),
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset('assets/icons/arrow_back.svg', height: 20, width: 20,),
      ),
      ),
      actions: [
        GestureDetector(
          onTap: () {

          },
        child: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 37,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 239, 138, 255),
          borderRadius: BorderRadius.circular(10)
        ),
        child: SvgPicture.asset('assets/icons/two-dots.svg', height: 20, width: 20,),
      ),
        ),
      ],
    );
  }
  
}