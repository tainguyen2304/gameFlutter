import 'package:flutter/material.dart';

class Giaodien_ChoTran_Online extends StatefulWidget {
  const Giaodien_ChoTran_Online({super.key});

  @override
  State<Giaodien_ChoTran_Online> createState() =>
      _Giaodien_ChoTran_OnlineState();
}

class _Giaodien_ChoTran_OnlineState extends State<Giaodien_ChoTran_Online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "images/Mask Group 17.png",
                        fit: BoxFit.cover,
                        height: 160,
                      ),
                      Image.asset(
                        "images/Mask Group 18.png",
                        fit: BoxFit.cover,
                        height: 160,
                      ),
                      // Container(
                      //   // margin: const EdgeInsets.all(60.0),
                      //   padding: const EdgeInsets.all(36.0),
                      //   decoration: BoxDecoration(
                      //     border: Border.all(),
                      //   ),
                      //   child: IconButton(
                      //     icon: const Icon(Icons.add),
                      //     onPressed: () {},
                      //   ),
                      // )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "images/swords.png",
                  fit: BoxFit.cover,
                  height: 100,
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(25),
                          side: BorderSide(width: 2, color: Colors.black)),
                      onPressed: () {},
                      child: Text("Game Start")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
