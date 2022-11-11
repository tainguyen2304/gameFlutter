import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Âm Thanh:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/volume.png"),
                    iconSize: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    'Ánh Sáng:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/icon3.png"),
                    iconSize: 80,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 108, 99, 99),
                        ),
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.fromLTRB(40, 20, 40, 20))),
                    onPressed: () {},
                    child: const Text("Back")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
