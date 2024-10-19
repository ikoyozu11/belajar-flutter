import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/farm-house.jpg"),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "FARM HOUSE LEMBANG",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Open Everyday")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    SizedBox(
                      height: 5,
                    ),
                    Text("09:00 - 20:00")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Rp. 25.000")
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.all(12),
          ),
        ],
      ),
    );
  }
}
