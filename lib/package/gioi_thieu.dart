import 'package:flutter/material.dart';

class GioiThieu extends StatefulWidget {
  const GioiThieu({super.key});

  @override
  State<GioiThieu> createState() => _GioiThieuState();
}

class _GioiThieuState extends State<GioiThieu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h2.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  height: 25,
                ),
                Text(
                  "WHO IS STUPID",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
