import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:game/package/Login.dart';
import 'package:game/package/welcome.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  TextEditingController txtemail = new TextEditingController();
  TextEditingController txtpass = new TextEditingController();
  TextEditingController confimtxtpass = new TextEditingController();
  Future SignUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      if (confimtxtpass.text.trim() == txtpass.text.trim()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: txtemail.text.trim(), password: txtpass.text.trim());
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/h5.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("images/icon1.png"),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                  child: TextField(
                    controller: txtemail,
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
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                  child: TextField(
                    controller: txtpass,
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
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 8),
                  child: TextField(
                    controller: confimtxtpass,
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
                      onPressed: () {
                        SignUp();
                      },
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
                        "Back to home",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
