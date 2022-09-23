import 'package:flutter/material.dart';

import '../custome_button.dart';

class MyButtonScreen extends StatelessWidget {
  const MyButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          //Button of The 15 on Top
          children: [
            Container(height: 150,width: 400, color: Colors.grey,
            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 150, width: 300,color: Colors.black),
                const SizedBox(width: 10),
                Container(height: 150, width: 80,color: Colors.yellow),
              ],),),

            // Button in the Center

            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 50, width: 160,color: Colors.black,

                  //Add the fist button

                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Scaffold(
                        body: CustomButton(),
                      ),
                    ),

                  ),
                  const SizedBox(width: 70),
                  Container(height: 50, width: 160,color: Colors.black,

                  //Add the second button

                child: const Scaffold(
                  body: CustomButton(),
                ),

                  ),
                ],),
            ),
            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.orange,),
            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.blue,),
            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.purple,),
            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.blue,),
            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}