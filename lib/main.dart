import 'package:expense_planner/screens/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "personal Expenses",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              headline6: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          accentColor: Colors.amber,
          fontFamily: "Quicksand"),
      home: HomePage(),
    );
  }
}
