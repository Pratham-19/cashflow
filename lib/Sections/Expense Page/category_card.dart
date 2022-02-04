import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoryCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String amount;
  CategoryCard({required this.icon, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 40,
                  child: Center(child: icon),
                ),
                // const SizedBox(
                //   // height: ,
                //   width: 10,
                // ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      title,
                      // style: const TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      amount,
                      // style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   width: 10,
          // ),
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
