import 'package:flutter/material.dart';

class HomepageWidget extends StatefulWidget{
  HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();

}

class _HomepageWidgetState extends State<HomepageWidget>{
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("dsdsd"), ),
    );
  }
}