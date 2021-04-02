import 'package:flutter/material.dart';
import 'package:quizz/screens/fifth_screen.dart';
import 'package:quizz/screens/first_screen.dart';
import 'package:quizz/screens/fourth_screen.dart';
import 'package:quizz/screens/second_screen.dart';
import 'package:quizz/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('topics'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green,Colors.blueAccent])
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen1()),
                      );
                    },
                    child: Text('Geography',
                        style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black87)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen2()),
                      );
                    },
                    child: Text('Physics',
                        style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black87)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen3()),
                      );
                    },
                    child: Text('Chemistry',
                        style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black87)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen4()),
                      );
                    },
                    child: Text('Programming',
                        style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black87)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: new LinearGradient(
                      colors: [Colors.green, Colors.yellow],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen5()),
                      );
                    },
                    child: Text('History',
                        style: TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            color: Colors.black87)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
