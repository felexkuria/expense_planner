import 'package:expense_planner/models/transcations.dart';
import 'package:expense_planner/widgets/NewTranscation.dart';
import 'package:expense_planner/widgets/TranscationalList.dart';
import 'package:expense_planner/widgets/UserTranscation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transcation> tranx = [
    Transcation(
      titie: " Train Ticket",
      amount: '1000',
      dateTime: DateTime.now(),
    ),
    Transcation(
      titie: " Shopping Naivas",
      amount: '500',
      dateTime: DateTime.now(),
    ),
    Transcation(
      titie: " Shopping Naivas",
      amount: '500',
      dateTime: DateTime.now(),
    ),
    Transcation(
      titie: " MacCoffee",
      amount: '1000',
      dateTime: DateTime.now(),
    ),
    Transcation(
      titie: "Water Bottle ",
      amount: ' 1000',
      dateTime: DateTime.now(),
    ),
    Transcation(
      titie: "School Bag ",
      amount: ' 1000',
      dateTime: DateTime.now(),
    ),
  ];
  void addNewTranx(String tittle, String amount, DateTime datetime) {
    final newTx =
        Transcation(titie: tittle, amount: amount, dateTime: DateTime.now());
    setState(() {
      tranx.add(newTx);
    });
  }

  void _startNewTranscation(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (btCtx) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: NewTranscation(addNewTranx),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Expenses",
        ),
        //backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () => _startNewTranscation(context),
            icon: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  "Chart",
                  style: TextStyle(
                    color: Colors.white60,
                  ),
                ),
                color: Colors.lightBlue,
              ),
            ),
            TranscationList(tranx),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.yellow,
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () => _startNewTranscation(context),
      ),
    );
  }
}
