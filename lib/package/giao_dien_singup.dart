import 'package:flutter/material.dart';
import 'package:game/package/dangnhap.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h5.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/icon1.png"),
              SizedBox(
                height: 70,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 8, 50, 8),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name or Email ", labelText: "Name or Email:"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password", labelText: "Password:"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Confirm Password ",
                      labelText: "Confirm Password:"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "Email", labelText: "Email:"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(45, 25, 45, 25),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 54, 60, 60),
                    width: 2.0,
                  ),
                ),
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 54, 60, 60),
                        width: 2.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back Home"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
