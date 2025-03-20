import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Book   Store',
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