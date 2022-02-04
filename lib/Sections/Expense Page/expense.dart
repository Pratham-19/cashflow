// ignore_for_file: prefer_const_constructors

import 'package:cashflow/Sections/Expense%20Page/category_card.dart';
import 'package:cashflow/Sections/Expense%20Page/home_utilities.dart';
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

class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key}) : super(key: key);

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
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
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
                        MaterialPageRoute(
                            builder: (context) => const FoodPage()),
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
                        MaterialPageRoute(
                            builder: (context) => const RentPage()),
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
                        MaterialPageRoute(
                            builder: (context) => const TravelPage()),
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
        ),
      ),
    );
  }
}
