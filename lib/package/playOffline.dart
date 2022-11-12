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
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/avatar1.png"),
              iconSize: 50,
            ),
            const Text(
              'Username',
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Who is stupid',
                style: TextStyle(
                    color: Color.fromARGB(255, 29, 226, 33),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(
                                    width: 3.0,
                                  ),
                                  backgroundColor: Colors.red),
                              onPressed: () => {},
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  "HELP",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 15, 11, 9),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Text(
                              'LV.1',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
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
                            "1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=1+1=",
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
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
                                Color.fromARGB(255, 29, 226, 33)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('1'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                Color.fromARGB(255, 29, 226, 33)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('1'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 29, 226, 33)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('1'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                const Color.fromARGB(255, 29, 226, 33)
                                    .withOpacity(0.8),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                            onPressed: () => {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('1'),
                            ),
                          ),
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
