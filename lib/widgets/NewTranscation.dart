import 'package:flutter/material.dart';

class NewTranscation extends StatefulWidget {
  // const NewTranscation({ Key? key }) : super(key: key);
  final Function addTrnx;
  NewTranscation(this.addTrnx);

  @override
  _NewTranscationState createState() => _NewTranscationState();
}

class _NewTranscationState extends State<NewTranscation> {
  final amountEditingController = TextEditingController();

  final titleEditingController = TextEditingController();

  void submitData() {
    final enteredTitle = titleEditingController.text;
    final enteredAmount = titleEditingController.text;
    final dateTime = DateTime.now();
    if (enteredTitle.isEmpty || enteredAmount.isEmpty) {
      return;
    }
    widget.addTrnx(
        titleEditingController.text, amountEditingController.text, dateTime);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                onSubmitted: (_) => submitData(),
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "Shopping at Naivas",
                  border: InputBorder.none,
                ),
                cursorColor: Theme.of(context).primaryColor,
                controller: titleEditingController,
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: size.width * 0.8,
                child: TextField(
                  onSubmitted: (_) => submitData(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Amount",
                    hintText: "120",
                    border: InputBorder.none,
                  ),
                  controller: amountEditingController,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(29),
                )),
            FlatButton(
              onPressed: submitData,
              child: Text(
                'Add Transcation',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
