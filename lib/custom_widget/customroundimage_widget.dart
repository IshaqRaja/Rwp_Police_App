import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundImage extends StatelessWidget {
  const CustomRoundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.blue,
          elevation: 8,
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.black26,
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.blue, width: 3),
                shape: BoxShape.circle,
              ),
              child: Ink.image(
                image: const AssetImage("assets/img.png"),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
