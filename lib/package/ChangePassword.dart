import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/package/Login.dart';
import 'package:game/package/Setting.dart';
import 'package:firebase_core/firebase_core.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  var oldpassERR = "Không được để trống";
  bool oldpassis = false;
  var confimeERR = "Không được để trống";
  var confimeis = false;
  var newpasserr = "Không được để trống";
  var newpassis = false;

  var txtoldPass = new TextEditingController();
  var txtnewPass = new TextEditingController();
  var cofimPass = new TextEditingController();
  Future update(String email, String oldpass, String newpass) async {
    setState(() {
      if (txtoldPass.text.isEmpty) {
        oldpassis = true;
      } else
        oldpassis = false;
      if (txtnewPass.text.isEmpty) {
        newpassis = true;
      } else
        newpassis = false;
      if (cofimPass.text.isEmpty) {
        confimeis = true;
      } else {
        confimeis = false;
      }
    });
    try {
      if (txtnewPass.text != cofimPass.text) {
        final snackBar = SnackBar(
          content: Text('Mật khẩu xác thực không giống'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        var cred =
            EmailAuthProvider.credential(email: email, password: oldpass);
        await FirebaseAuth.instance.currentUser!
            .reauthenticateWithCredential(cred)
            .then((value) {
          FirebaseAuth.instance.currentUser!.updatePassword(newpass);
          FirebaseAuth.instance.signOut();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Login()));
          final snackBar = SnackBar(
            content: Text('Đổi thành công, mời bạn đăng nhập lại'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }).catchError((e) {
          final snackBar = SnackBar(
            content: Text('Mật khẩu không đúng'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: txtoldPass,
                    obscureText: true,
                    decoration: InputDecoration(
                        errorText: oldpassis ? oldpassERR : null,
                        border: UnderlineInputBorder(),
                        labelText: 'Old Password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: txtnewPass,
                    obscureText: true,
                    decoration: InputDecoration(
                        errorText: newpassis ? newpasserr : null,
                        border: UnderlineInputBorder(),
                        labelText: 'New Password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: cofimPass,
                    obscureText: true,
                    decoration: InputDecoration(
                        errorText: confimeis ? confimeERR : null,
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 61, 46, 38)
                                  .withOpacity(0.8),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Setting()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: Text(
                              "Back",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              const Color.fromARGB(255, 61, 46, 38)
                                  .withOpacity(0.8),
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                          onPressed: () => {
                            update(
                                FirebaseAuth.instance.currentUser!.email
                                    .toString(),
                                txtoldPass.text.toString(),
                                txtnewPass.text.toString())
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: Text(
                              "Accept",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
