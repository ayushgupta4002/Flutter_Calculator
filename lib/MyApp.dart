import 'dart:ui';
import 'Calls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/Calls.dart';
import 'Chat.dart';
import 'Status.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_car)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chat(),
            Status(),
            Calls(),

          ],
        ),
      ),
    );
  }
}
