// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.blue,
          ),
          title: Text("Home"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: Column(
          children: [
            Card(
              child: Text("Bar Chart here"),
            ),
            Card(
              child: Text("Recent Transaction here"),
            ),
          ],
        ),
      ),
    );
  }
}
