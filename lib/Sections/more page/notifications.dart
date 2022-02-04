import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(ProfilePage());

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
          title: Text("Notifications"),
          centerTitle: true,
          leading: InkWell(
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
              tooltip: "back",
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 500,
              // child: Image.asset('assets/Images/Under Construction.jpg'),
              child: Image.asset('assets/Images/Under Construction(mod).png'),
              // child: Image.asset('assets/Images/Under Construction2.jpg.png'),
            ),
          ],
        ),
      ),
    );
  }
}
