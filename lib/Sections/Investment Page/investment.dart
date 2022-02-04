import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InvestmentPage extends StatelessWidget {
  const InvestmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.blue,
          ),
          title: Text("Investments"),
          centerTitle: true,
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
