import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/main.dart';
import '../data/user.dart';
import 'Signup.dart';
import 'ChooseAvatar.dart';

class resetpassScreen extends StatefulWidget {
  resetpassScreen({super.key});

  @override
  State<resetpassScreen> createState() => _resetpassScreen();
}

class _resetpassScreen extends State<resetpassScreen> {
  TextEditingController email = TextEditingController();
  var ccc = "Không được để trống và phải giống với password";
  var cccccciss = false;

  Future quenMK() async {
    setState(() {
      if (email.text.isEmpty || !email.toString().contains("@")) {
        cccccciss = true;
      } else
        cccccciss = false;
    });

    try {
      if (cccccciss == false) {
        await FirebaseAuth.instance
            .sendPasswordResetEmail(email: email.text.trim());
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Đã reset password check your email"),
              );
            });
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  List<Usera> lsUsers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("User").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final data = snapshot.data!.docs;

                for (var row in data) {
                  final r = row.data() as Map<String, dynamic>;
                  var a = Usera(
                      score: r['score'],
                      level: r['Level'],
                      id: r['id'],
                      email: r['email'],
                      name: r['name'],
                      avatar: r['avatar'],
                      age: r['age']);
                  lsUsers.add(a);
                }
              }
              return ListView(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                      child: Image.asset(
                        "images/icon1.png",
                        fit: BoxFit.cover,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Reset Pass',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  style: const TextStyle(color: Colors.black54),
                                  decoration: InputDecoration(
                                      errorText: cccccciss ? ccc : null,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black54),
                                      ),
                                      border: OutlineInputBorder(),
                                      hintText: 'Email',
                                      hintStyle:
                                          TextStyle(color: Colors.black54)),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(),
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        quenMK();
                                      },
                                      child: Text("Reset pass")),
                                  Padding(padding: EdgeInsets.only(left: 15)),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Back"))
                                ],
                              ),
                            ],
                          )),
                    )
                  ]),
                )
              ]);
            }));
  }
}
