import 'package:expense_planner/models/transcations.dart';
import 'package:flutter/material.dart';
import '../models/transcations.dart';

class TranscationList extends StatelessWidget {
  // const TranscationList({Key? key}) : super(key: key);

  final List<Transcation> tranx;
  TranscationList(this.tranx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: tranx.isNotEmpty
          ? Column(
              children: [
                Text(
                  "No Transcations added yet",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Image.asset("assets/images/waiting.png")
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  //color: Colors.grey[300],
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "Ksh ${tranx[index].amount}",
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tranx[index].titie!,
                            style: Theme.of(context).textTheme.headline6,
                            // style: TextStyle(
                            //   fontSize: 16,
                            //   fontWeight: FontWeight.w900,

                            //   color: Colors.black,
                            //   //fontWeight: FontWeight.w900,
                            // ),
                          ),
                          Text(
                            "Minutes  Added : ${tranx[index].dateTime.minute} minutes Ago",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: tranx.length,
            ),
    );
  }
}
