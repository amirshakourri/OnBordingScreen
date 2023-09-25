import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff3C58C3), //change your color here
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xffF6F7FD),
        elevation: 0,
      ),
      backgroundColor: Color(0xffF6F7FD),
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
