import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class GiaoDienBangTL extends StatefulWidget {
  const GiaoDienBangTL({super.key});

  @override
  State<GiaoDienBangTL> createState() => _GiaoDienBangTLState();
}

class _GiaoDienBangTLState extends State<GiaoDienBangTL> {
  Color _color = Color.fromARGB(255, 101, 103, 101).withOpacity(0.8);
  void _change() {
    setState(() {
      _color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/icon2.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'LV.120',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/settings.png"),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
              const Text(
                'WHO IS STUPID',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'MyFont'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      var showDialog2 = showDialog(
                        context: context,
                        builder: (context) => QuyenTroGiup(),
                      );
                    },
                    icon: Image.asset("images/help.png"),
                    iconSize: 80,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                    child: Text(
                      'LV1',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              LinearPercentIndicator(
                animation: true,
                lineHeight: 20.0,
                animationDuration: 5000,
                percent: 1,
                center: const Text("10s"),
                progressColor: Colors.black38,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 65, 64, 64).withOpacity(0.8),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '1 + 1 =',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'CHOOSE YOUR ANSWER:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 101, 103, 101).withOpacity(0.8),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {
                        var showDialog2 = showDialog(
                          context: context,
                          builder: (context) => QuyenTroGiup1(),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(_color),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {
                        var showDialog2 = showDialog(
                          context: context,
                          builder: (context) => QuyenTroGiup1(),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 101, 103, 101).withOpacity(0.8),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {
                        var showDialog2 = showDialog(
                          context: context,
                          builder: (context) => QuyenTroGiup1(),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 101, 103, 101).withOpacity(0.8),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {
                        var showDialog2 = showDialog(
                          context: context,
                          builder: (context) => QuyenTroGiup1(),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AlertDialog QuyenTroGiup() {
    return AlertDialog(
      backgroundColor: Colors.white70.withOpacity(0.75),
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/icon7.png"),
                  iconSize: 100,
                ),
                // Divider(
                //   color: Colors.black,
                // ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/passed.png"),
                  iconSize: 100,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/settings.png"),
                  iconSize: 100,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

AlertDialog QuyenTroGiup1() {
  return AlertDialog(
    title: Text("Are You Sure"),
    backgroundColor: Color.fromARGB(255, 126, 147, 184).withOpacity(0.75),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
    actions: [
      TextButton(
        onPressed: () {},
        child: Text('Yes'),
      ),
      TextButton(
        onPressed: () {},
        child: Text('No'),
      ),
    ],
  );
}
