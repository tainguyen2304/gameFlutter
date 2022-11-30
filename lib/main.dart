import 'package:game/package/HomePage.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/ChangePassword.dart';
import 'package:game/package/chat.dart';
import 'package:game/package/giao_dien_chotran.dart';
import 'package/Welcome.dart';
import 'package:flutter/material.dart';
import './package/InfomationDetail.dart';
import 'package/Lose.dart';
import 'package/chooseTypeplay.dart';
import 'package/Room.dart';
import 'package/giao_dien_bangtraloi.dart';
import 'package/round1.dart';
import 'package/round2.dart';
import 'package/round3.dart';
import 'package/round4.dart';
import 'package/round5.dart';
import 'package/gioithieu.dart';
import 'package/giao_dien_menu_play.dart';

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
      //home: const Welcome()
      //home: GiaoDien_Lose(),
      //home: ChooseTypeplay(),
      //home: Room(),
      home: MenuPlay(),
      //home: GiaoDienBangTL(),
      // home: GioiThieu(),
      // home: ChatMesseage(),
    );
  }
}
