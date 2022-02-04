import 'package:flutter/cupertino.dart';

import 'Sections/Bank Account Page/bankaccount.dart';
import 'Sections/Expense Page/expense.dart';
import 'Sections/Home Page/home.dart';
import 'Sections/Investment Page/investment.dart';
import 'Sections/more page/more.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: const [
            HomePage(),
            ExpensePage(),
            InvestmentPage(),
            BankAccount(),
            MorePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money_outlined), label: 'Expenses'),
            BottomNavigationBarItem(
                icon: Icon(Icons.broken_image_outlined), label: 'Investment'),
            // // icon: Icon(CupertinoIcons.graph_square),
            // label: 'Investment'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_sharp), label: 'Bank Account'),
            BottomNavigationBarItem(icon: Icon(Icons.segment), label: 'More')
          ],
          // type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          onTap: onTapped,
        ),
      ),
    );
  }
}
