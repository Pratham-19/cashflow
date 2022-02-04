import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({Key? key}) : super(key: key);

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
            title: Text("Bank Account"),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 500,
                // child: Image.asset('assets/Images/Under Construction.jpg'),
                child: Image.asset(
                    'assets/Images/Under_Construction3-removebg-preview.png'),
                // child: Image.asset('assets/Images/Under Construction2.jpg.png'),
              ),
            ],
          )),
    );
  }
}
