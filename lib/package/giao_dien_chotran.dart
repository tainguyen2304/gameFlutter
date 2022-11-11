import 'package:flutter/material.dart';

class Giaodien_ChoTran extends StatefulWidget {
  const Giaodien_ChoTran({super.key});

  @override
  State<Giaodien_ChoTran> createState() => _Giaodien_ChoTranState();
}

class _Giaodien_ChoTranState extends State<Giaodien_ChoTran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/Mask Group 17.png",
                  fit: BoxFit.cover,
                  height: 200,
                ),
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "images/swords.png",
                  fit: BoxFit.cover,
                  height: 100,
                ),
                SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "images/Mask Group 18.png",
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
     