import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:game/models/HistoryLevelOffline.dart';
import '../models/avatar_models.dart';
import './HomePage.dart';
import 'package:game/data/user.dart';

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
  Future createData(String name, String age, String avatar) async {
    setState(() {
      if (selectedIndex.isEmpty) {
        avataris = true;
      } else
        avataris = false;
      if (nickName.text.isEmpty) {
        useis = true;
      } else
        useis = false;
      if (txtage.text.isEmpty) {
        sologanis = true;
      } else {
        sologanis = false;
      }
    });
    try {
      var check = 0;
      for (int i = 0; i < lsUsers.length; i++) {
        if (lsUsers[i].name == name) check = 1;
      }
      if (check == 1) {
        final snackBar = const SnackBar(
          content: Text('Đâ tồn tại name này'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
      if (sologanis == false &&
          useis == false &&
          avataris == false &&
          check == 0) {
        var a = FirebaseAuth.instance.currentUser!;
        final data = FirebaseFirestore.instance.collection('User').doc();
        var userId = data.id;

        // thêm user
        final json = Usera(
            score: 0,
            level: 1,
            id: userId,
            name: name,
            avatar: avatar,
            age: age,
            email: a.email!);
        data.set(json.toJson());

        // thêm history
        FirebaseFirestore.instance
            .collection('topic')
            .get()
            .then((QuerySnapshot querySnapshot) {
          querySnapshot.docs.forEach((doc) {
            final data = FirebaseFirestore.instance
                .collection('offlineHistoryUser')
                .doc();
            var historyId = data.id;
            final json = OfflineUserHistory(
              id: historyId,
              userEmail: a.email!,
              topic: doc["name"],
              level: '1',
            );
            data.set(json.toJson());
          });
        });

        Navigator.of(context).popUntil((route) => route.isFirst);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HomePage(
                    )));
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    ;
  }

  Future kiemtra() async {
    List<String> docID = [];

    await FirebaseFirestore.instance
        .collection("User")
        .get()
        .then((value) => value.docs.forEach((element) {
              docID.add(element.reference.id);
            }));
  }

  var selectedIndex = "";
  TextEditingController nickName = TextEditingController();
  TextEditingController txtage = TextEditingController();
  String avatar = "";

  var avatarerr = "Không được để trống";
  var avataris = false;
  var usererr = "Không được để trống";
  var sologanerrr = "Không được để trống";
  var useis = false;
  var sologanis = false;
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
            for (int i = 0; i < lsUsers.length; i++) {
              if (lsUsers[i].email ==
                  FirebaseAuth.instance.currentUser!.email) {
                var level = lsUsers[i].level / 10;

                return HomePage(
                  );
              }
            }
            return ListView(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/backgroundGeneral.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0.0),
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
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Infordetail',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: TextFormField(
                                  controller: nickName,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      errorText: useis ? usererr : null,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black54),
                                      ),
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your nick name',
                                      hintStyle: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4),
                                child: TextField(
                                  controller: txtage,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  decoration: InputDecoration(
                                      errorText: sologanis ? sologanerrr : null,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.black54),
                                      ),
                                      border: OutlineInputBorder(),
                                      hintText: 'Your sologan',
                                      hintStyle:
                                          TextStyle(color: Colors.white)),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                                  BorderRadius.circular(20.0)),
                                        ),
                                      ),
                                      onPressed: () {
                                        createData(
                                            nickName.text, txtage.text, avatar);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 61, 46, 38),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'CHOOSE YOUR AVATAR',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Wrap(
                                  children: avatarImages
                                      .map((item) => Container(
                                            margin: const EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 10,
                                                    color:
                                                        selectedIndex == item.id
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
                                              iconSize: 60,
                                            ),
                                          ))
                                      .toList()),
                              Text(avataris ? avatarerr.toString() : "",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }

          return Text("");
        },
      ),
    );
  }
}
