import 'package:flutter/material.dart';
import '../models/avatar_models.dart';
import './HomePage.dart';

List<Avatar> avatarImages = [
  Avatar(image: "images/avatar1.png", id: "1"),
  Avatar(image: "images/avatar2.png", id: "2"),
  Avatar(image: "images/avatar3.png", id: "3"),
  Avatar(image: "images/avatar4.png", id: "4"),
  Avatar(image: "images/avatar5.png", id: "5"),
  Avatar(image: "images/avatar6.png", id: "6"),
];

class ChooseAvatar extends StatefulWidget {
  const ChooseAvatar({Key? key}) : super(key: key);

  @override
  _ChooseAvatarState createState() => _ChooseAvatarState();
}

class _ChooseAvatarState extends State<ChooseAvatar> {
  var selectedIndex = "";
  TextEditingController nickName = TextEditingController(text: "");
  TextEditingController age = TextEditingController(text: "");
  var avatar = "";

  void _done() {
    if (nickName.text != "" && age.text != "" && avatar != "") {
      Navigator.of(context).popUntil((route) => route.isFirst);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  nickName: nickName.text,
                  avatar: avatar,
                )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundGeneral.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0.0),
              child: Image.asset(
                "images/icon1.png",
                fit: BoxFit.cover,
                width: 60,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: nickName,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black54),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your nick name',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: age,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black54),
                          ),
                          border: OutlineInputBorder(),
                          hintText: 'Your age',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(10.0),
                      //   child: ElevatedButton(
                      //     style: ButtonStyle(
                      //       backgroundColor: MaterialStatePropertyAll<Color>(
                      //         const Color.fromARGB(255, 61, 46, 38)
                      //             .withOpacity(0.8),
                      //       ),
                      //       shape: MaterialStateProperty.all(
                      //         RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(20.0)),
                      //       ),
                      //     ),
                      //     onPressed: () => {Navigator.pop(context)},
                      //     child: const Padding(
                      //       padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                      //       child: Text(
                      //         "Back",
                      //         style: TextStyle(color: Colors.white),
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
                          onPressed: _done,
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: Text(
                              "Done",
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'CHOOSE YOUR AVATAR',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                      children: avatarImages
                          .map((item) => Container(
                                margin: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 10,
                                        color: selectedIndex == item.id
                                            ? Colors.green
                                            : Colors.grey)),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = item.id;
                                      avatar = item.image;
                                    });
                                  },
                                  icon: Image.asset(item.image),
                                  iconSize: 100,
                                ),
                              ))
                          .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
