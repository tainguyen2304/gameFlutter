import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Old Password',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'New Password',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
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
                      onPressed: () => {Navigator.pop(context)},
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
    );
  }
}
