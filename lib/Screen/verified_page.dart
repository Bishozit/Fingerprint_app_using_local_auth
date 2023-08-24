import 'package:flutter/material.dart';

class Verified_Page extends StatefulWidget {
  const Verified_Page({super.key});

  @override
  State<Verified_Page> createState() => _Verified_PageState();
}

class _Verified_PageState extends State<Verified_Page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFF043d33),
      body: Center(
        child: Text("Verified to the Page", style: TextStyle(color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500),),
      ),
    );
  }
}