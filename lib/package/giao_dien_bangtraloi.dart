import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class GiaoDienBangTL extends StatefulWidget {
  const GiaoDienBangTL({super.key});

  @override
  State<GiaoDienBangTL> createState() => _GiaoDienBangTLState();
}

class _GiaoDienBangTLState extends State<GiaoDienBangTL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/icon2.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'LV.120',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/settings.png"),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
              Text(
                'WHO IS STUPID',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'MyFont'),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/help.png"),
                    iconSize: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              LinearPercentIndicator(
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 1,
                center: const Text("10s"),
                progressColor: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
