import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  const CustomImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          color: Colors.blue,
          elevation: 8,
          borderRadius: BorderRadius.circular(28),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.black26,
            onTap: (){},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(image: const AssetImage("assets/img.png"),
                height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 6),
                const Text("Button",
                style: TextStyle(
                  fontSize: 32, color: Colors.white
                ),
                ),
                SizedBox(width: 6)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
