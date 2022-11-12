import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 20.0),
              child: Image.asset(
                "images/logowhoIsStupid.png",
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
                            hintText: 'Enter your nick name',
                            hintStyle: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        style: TextStyle(color: Colors.black54),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black54),
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Your age',
                            hintStyle: TextStyle(color: Colors.black54)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
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
                            onPressed: () => {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar1.png"),
                          iconSize: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar2.png"),
                          iconSize: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar3.png"),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar4.png"),
                          iconSize: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar5.png"),
                          iconSize: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/avatar6.png"),
                          iconSize: 80,
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
