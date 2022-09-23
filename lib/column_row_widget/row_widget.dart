import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.grey,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 80, height: 30, color: Colors.black),
              Container(width: 80, height: 50, color: Colors.yellow),
              Container(width: 80, height: 30, color: Colors.orange),

            ],
          ),
        ),
      ),
    );
  }
}
