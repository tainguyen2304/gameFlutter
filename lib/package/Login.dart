import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/main.dart';
import 'package:game/package/resetpassScreen.dart';
import 'Signup.dart';
import 'ChooseAvatar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController psw = TextEditingController();
  void quen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => resetpassScreen()),
    );
  }

  Future _login() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      if ((email.text == "" && psw.text == "") ||
          (email.text == "") ||
          (psw.text == "")) {
        final snackBar = SnackBar(
          content: Text('Không được để email rỗng và passworld rỗng'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: email.text.trim(), password: psw.text.trim());
        FirebaseAuth.instance.authStateChanges().listen(
          (event) {
            if (event != null) {
              final snackBar = SnackBar(
                content: Text('Thanh công '),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              psw.text = "";
            }
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        content: Text('Sai email hoặc password'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print(e);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ChooseAvatar();
            } else {
              return ListView(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/h1.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
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
                                    'Log In',
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
                                    style:
                                        const TextStyle(color: Colors.black54),
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black54),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: 'Name or Email',
                                        hintStyle:
                                            TextStyle(color: Colors.black54)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextField(
                                    controller: psw,
                                    obscureText: true,
                                    style:
                                        const TextStyle(color: Colors.black54),
                                    decoration: const InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.black54),
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: 'Password',
                                        prefixIcon: Icon(Icons.password),
                                        hintStyle:
                                            TextStyle(color: Colors.black54)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(),
                                    ),
                                    GestureDetector(
                                      onTap: () => {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  resetpassScreen()),
                                        )
                                      },
                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color:
                                              Color.fromARGB(136, 42, 42, 42),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                            const Color.fromARGB(
                                                    255, 61, 46, 38)
                                                .withOpacity(0.8),
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                          ),
                                        ),
                                        onPressed: _login,
                                        child: const Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              30, 20, 30, 20),
                                          child: Text(
                                            "Log In",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.zero,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                            const Color.fromARGB(
                                                    255, 247, 224, 224)
                                                .withOpacity(0.8),
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)),
                                          ),
                                        ),
                                        onPressed: () => {
                                          email.text = "",
                                          psw.text = "",
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Singup()),
                                          ),
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              30, 20, 30, 20),
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 61, 46, 38),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset("images/google.png"),
                                      iconSize: 50,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset("images/facebook.png"),
                                      iconSize: 50,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
