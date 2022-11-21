import 'package:flutter/material.dart';
import 'package:game/package/giao_dien_chienthang.dart';
import 'package:game/package/giao_dien_highcoreStar.dart';
import 'package/gioi_thieu.dart';
import 'package/dangnhap.dart';
import 'package/chance_password.dart';
import 'package/giao_dien_thongtin_email.dart';
import 'package/giao_dien_OTP.dart';
import 'package:game/package/giao_dien_bangtraloi.dart';
import 'package/giao_dien_setting.dart';
import 'package/giao_dien_Bangrxephangoff.dart';
import 'package:game/data/dataoff.dart';
import 'package/giao_dien_chotran.dart';
import 'package/giao_dien_singup.dart';
import 'package/giao_dien_username.dart';
import 'package/chooseAvatar.dart';
import 'package/giao_dien_menu_play.dart';
import 'package/giao_dien_chotran_online.dart';
import 'package/giao_dien_chienthang2.dart';
import 'package/highScore_off.dart';

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
      // home: GioiThieu(),
      // home: ChooseAvatar(),
      // home: DangNhap(),
      // home: Chance_Password(),
      // home: GiaoDien_Email(),
      // home: GiaoDienOTP(),
      //home: GiaoDienBangTL(),
      // home: Setting(),
      // home: SetGiaoDien_Off(),
      // home: MenuPlay(),
      // home: Giaodien_ChoTran(),
      // home: Giaodien_ChoTran_Online(),
      // home: GiaoDien_Username(),
      // home: GiaoDien_chienthang(),
      //home: GiaoDien_Won(),
      //home: GiaoDien_HighScore_Off(),
      home: GiaoDien_HighCore_Star(),
    );
  }
}
