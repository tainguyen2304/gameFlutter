import 'package:flutter/material.dart';

class GiaoDienOTP extends StatefulWidget {
  const GiaoDienOTP({super.key});

  @override
  State<GiaoDienOTP> createState() => _GiaoDienOTPState();
}

class _GiaoDienOTPState extends State<GiaoDienOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h3.jpg"), fit: BoxFit.cover),
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
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Email:',
                ),
                style: const TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: EdgeInsets.zero,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      const Color.fromARGB(255, 251, 239, 239).withOpacity(0.8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Text(
                      "Mời bạn nhập mã OTP",
                      style: TextStyle(
                          color: Color.fromARGB(255, 16, 7, 2),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
