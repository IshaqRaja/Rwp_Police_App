import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("It's a First page"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 5),
              image: const DecorationImage(
                  image: AssetImage('assets/img.png'),
                  fit: BoxFit.fill
              ),
            ),
            height: 1500,
            width: 1500,
          ),
        )
    );
  }
}
