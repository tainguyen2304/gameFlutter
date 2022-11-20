import 'package:game/package/HomePage.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/ChangePassword.dart';

import 'package/Welcome.dart';
import 'package:flutter/material.dart';
import './package/InfomationDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const GioiThieu());
  }
}
