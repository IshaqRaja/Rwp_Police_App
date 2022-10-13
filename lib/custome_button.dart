import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => null,
      child: Container(
          width: 150,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0.0, 20.0),
                    blurRadius: 30.0,
                    color: Colors.black12
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0)
          ),
          child: Row(
            children: <Widget>[
              Container(
                height:50,
                width: 90,
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(95.0),
                        topLeft: Radius.circular(95.0),
                        bottomRight: Radius.circular(200.0)
                    )
                ),
                child:
                Text('Button',
                    style: Theme.of(context).textTheme.button?.apply(color: Colors.white)),
              ),
              Tab(icon: Image.asset("assets/img.png"),
              )
            ],
          ),
      ),
    );
  }
}
