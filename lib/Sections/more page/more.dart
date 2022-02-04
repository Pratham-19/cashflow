// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'news.dart';
import 'notifications.dart';
import 'package:cashflow/Sections/more%20page/more_cards.dart';
import 'package:cashflow/Sections/more%20page/profliepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

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
          title: Text("More"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                // behavior: HitTestBehavior.opaque,
                child: MoreCards(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    size: 35,
                  ),
                  title: "Profile",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewsPage()),
                  );
                },
                child: MoreCards(
                  icon: Icon(
                    CupertinoIcons.news,
                    size: 35,
                  ),
                  title: "News",
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()),
                  );
                },
                child: MoreCards(
                  icon: Icon(
                    CupertinoIcons.bell,
                    size: 30,
                  ),
                  title: "Notifications",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
