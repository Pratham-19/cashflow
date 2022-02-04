import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(ProfilePage());

class GroceriesPage extends StatelessWidget {
  const GroceriesPage({Key? key}) : super(key: key);

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
          title: Text("Transactions"),
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
              icon: Icon(
                Icons.add,
                // size: 30,
              ),
              tooltip: "Edit",
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
