import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),

        body: Container(
          color: Colors.grey,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 50, height: 80, color: Colors.blue),
              Container(width: 100, height: 80, color: Colors.green),
              Container(width: 30, height: 80, color: Colors.orange,),
            ],
          ),
        ),
      ),

    );
  }
}
