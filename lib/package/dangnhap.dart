import 'package:flutter/material.dart';
import 'giao_dien_singup.dart';

class DangNhap extends StatefulWidget {
  const DangNhap({super.key});

  @override
  State<DangNhap> createState() => _DangNhapState();
}

class _DangNhapState extends State<DangNhap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),
              child: Image.asset(
                "images/icon1.png",
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.black54, fontSize: 25),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black54),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Name or Email',
                            hintStyle: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black54),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            hintStyle: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        GestureDetector(
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromARGB(137, 243, 217, 217),
                              fontSize: 15,
                            ),
                          ),
                          onTap: () => {print('i was tapped!')},
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
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 61, 46, 38)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                              child: Text(
                                "Log In",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 247, 224, 224)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Singup()),
                              ),
                            },
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 61, 46, 38),
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
    );
  }
}
