import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
          title: Text("My Profile"),
          centerTitle: true,
          leading: InkWell(
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
              tooltip: "back",
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              tooltip: "Edit",
            ),
          ],
        ),
      ),
    );
  }
}
