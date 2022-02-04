import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoreCards extends StatelessWidget {
  final Widget icon;
  final String title;
  MoreCards({required this.icon, required this.title});

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
                const SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
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
