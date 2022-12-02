import 'package:flutter/material.dart';

import '../package/chat.dart';

class PopMenu extends StatefulWidget {
  const PopMenu({super.key});

  @override
  State<PopMenu> createState() => _PopMenuState();
}

class _PopMenuState extends State<PopMenu> {
  @override
  Widget build(BuildContext context) {
    String information = 'Information';
    String messeage = 'Messeage';
    String delete = 'Delete';
    String invite = 'Invite';
    return Container(
      child: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            child: Text(information),
            value: 0,
          ),
          PopupMenuItem(
            child: Text(messeage),
            value: 1,
          ),
          PopupMenuItem(
            child: Text(delete),
            value: 2,
          ),
          PopupMenuItem(
            child: Text(invite),
            value: 3,
          ),
        ],
        onSelected: (value) {
          if (value == 0) {}
          ;
          if (value == 1) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ChatMesseage(),
              ),
            );
          }
          ;
          if (value == 2) {
            var showDialog2 = showDialog(
              context: context,
              builder: (context) => QuyenTroGiup1(),
            );
          }

          if (value == 3) {}
          ;
        },
      ),
    );
  }
}

AlertDialog QuyenTroGiup1() {
  return AlertDialog(
    title: Text("Are You Sure"),
    backgroundColor: Color.fromARGB(255, 126, 147, 184).withOpacity(1),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text(
          'Yes',
          style: TextStyle(color: Colors.black38),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'No',
          style: TextStyle(color: Colors.black38),
        ),
      ),
    ],
  );
}
