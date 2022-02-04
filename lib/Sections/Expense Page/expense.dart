// ignore_for_file: prefer_const_constructors

import 'package:cashflow/Sections/Expense%20Page/category_card.dart';
import 'package:cashflow/Sections/Expense%20Page/home_utilities.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'piechart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'category_card.dart';
import 'home_utilities.dart';
import 'travel.dart';
import 'groceries.dart';
import 'food.dart';
import 'rent.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
  bool status = true;
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
          title: Text("Expenses"),
          centerTitle: true,
          leading: FlutterSwitch(
            width: 80.0,
            height: 35.0,
            valueFontSize: 15.0,
            toggleSize: 16,
            value: status,
            // toggleBorder: Colors.black,
            // borderRadius: 10.0,
            padding: 8.0,
            showOnOff: true,
            activeText: "Spend",
            inactiveText: "Earn",
            inactiveColor: Colors.greenAccent,
            activeColor: Colors.redAccent,
            onToggle: (val) {
              setState(
                () {
                  status = val;
                  // if (!val) {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const HomeUtilitiesPage()),
                  // );
                  // }
                },
              );
            },
          ),
          leadingWidth: 90,
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: !(status) ? earnPage() : spendPage(),
      ),
    );
  }

  Widget earnPage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          PieChart(),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20),
                  // textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeUtilitiesPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 earned",
                  icon: Icon(
                    // Icons.home,
                    // CupertinoIcons.,
                    Icons.price_change_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Salary",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 earned",
                  icon: Icon(
                    // Icons.restaurant_outlined,
                    CupertinoIcons.bitcoin_circle,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Investments",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RentPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 earned",
                  icon: Icon(
                    Icons.real_estate_agent_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Rent",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget spendPage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          PieChart(),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20),
                  // textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeUtilitiesPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 spent",
                  icon: Icon(
                    // Icons.home,
                    // CupertinoIcons.,
                    Icons.handyman_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Home & Utilities",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 spent",
                  icon: Icon(
                    Icons.restaurant_outlined,
                    // CupertinoIcons.,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Food",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RentPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 spent",
                  icon: Icon(
                    Icons.real_estate_agent_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Rent",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GroceriesPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 spent",
                  icon: Icon(
                    // CupertinoIcons.bag_fill,
                    Icons.shopping_bag_outlined,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Groceries",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TravelPage()),
                  );
                },
                child: CategoryCard(
                  amount: "₹999 spent",
                  icon: Icon(
                    // CupertinoIcons.airplane,
                    Icons.flight_sharp,
                    size: 35,
                    color: Colors.red,
                  ),
                  title: "Travel",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
