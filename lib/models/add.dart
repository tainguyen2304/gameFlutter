import 'package:flutter/material.dart';

class AddFr extends StatefulWidget {
  const AddFr({super.key});

  @override
  State<AddFr> createState() => _AddFrState();
}

class _AddFrState extends State<AddFr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              side: BorderSide(width: 2, color: Colors.black)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                content: Text('Enter Name friemd'),
                actions: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: TextField(
                          style: const TextStyle(color: Colors.black54),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black54),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Colors.black54)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: Colors.white,
                                padding:
                                    const EdgeInsets.fromLTRB(40, 20, 40, 20),
                                side:
                                    BorderSide(width: 2, color: Colors.black)),
                            onPressed: () {},
                            child: Text("Check")),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 10, 100, 0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black))),
                                  child: Text(
                                    'Nguyễn',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                Container(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          padding: const EdgeInsets.all(10),
                                          side: BorderSide(
                                              width: 2, color: Colors.black)),
                                      onPressed: () {},
                                      child: Text("Add")),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                              child: Container(
                                height: MediaQuery.of(context).size.width / 2.5,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
            );
          },
          child: Text("Add")),
    );
  }
}
