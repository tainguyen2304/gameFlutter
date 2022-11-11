import 'package:flutter/material.dart';
class Chance_Password extends StatefulWidget {
  const Chance_Password({super.key});

  @override
  State<Chance_Password> createState() => _Chance_PasswordState();
}

class _Chance_PasswordState extends State<Chance_Password> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 110,
              ),
              const Text(
                'Chance Password',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w500,
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
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'New Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Confirm password',
                ),
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
                      onPressed: () => {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Text(
                          "Back",
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