import 'package:flutter/material.dart';
import 'package:game/package/Login.dart';

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
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Enter Name",
                      labelText: "Name",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 200, 199, 199))),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password:",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 200, 199, 199)),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Confirm Password ",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 200, 199, 199)),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: "Confirm Password:",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email:",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 200, 199, 199)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 54, 60, 60),
                        width: 2.0,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 54, 60, 60),
                        width: 2.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Login",
                    ),
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
