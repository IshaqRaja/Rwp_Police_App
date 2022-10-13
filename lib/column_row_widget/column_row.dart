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
               children: [
              Container(height: 150, width: 300,color: Colors.black,
              padding: const EdgeInsets.only(left: 50),
             child: SizedBox(
               width: 80,
               height: 80,
               child: MaterialButton(
                 shape: const CircleBorder(
                   side: BorderSide(
                     width: 2,
                     color: Colors.white,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white70,
                 textColor: Colors.amber,
                 onPressed: (){},
                 child: const Text("Login"),
               ),
              ),
             ),
               const SizedBox(width: 10,),
                Container(height: 150, width: 80,color: Colors.yellow,
                  padding: const EdgeInsets.only(top: 70),
                  child: SizedBox(
                    width: 15,
                    height: 15,
                    child: MaterialButton(
                        shape: const CircleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.white,
                            style: BorderStyle.solid
                        ),
                      ),
                      color: Colors.white70,
                      textColor: Colors.amber,
                      onPressed: (){},
                      child: const Text("Radio"),
                    ),
                  ),
                ),
              ],
            ),

            ),

            // 1st line in the Center

            const SizedBox(height: 10,),
            Container(height: 50,width: 400, color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(height: 50, width: 160,color: Colors.black,

                  //Add the fist button
                      child: const Scaffold(
                        body: CustomButton(),
                      ),

                  ),
                  const SizedBox(width: 70),
                  Container(height: 50, width: 160,color: Colors.black,

                  //Add the second button

                child: const Scaffold(
                  body: CustomButton(),
                ),

                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // 2nd line in the Center

            Container(height: 50,width: 400, color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 50, width: 160,color: Colors.black,

                    //Add the fist button
                    child: const Scaffold(
                      body: CustomButton(),
                    ),

                  ),
                  const SizedBox(width: 70),
                  Container(height: 50, width: 160,color: Colors.black,

                    //Add the second button

                    child: const Scaffold(
                      body: CustomButton(),
                    ),

                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),

            // 3rd line in the Center

            Container(height: 50,width: 400, color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
              height: 50, width: 160, color: Colors.black,
              child: const Scaffold(
              body: CustomButton(),
              ),
              ),
                const SizedBox(
                  width: 70,
                ),
                Container( height: 50, width: 160, color: Colors.black,
               child: const Scaffold(
                  body: CustomButton(),
                )
                )
              ],
            ),
            ),
            const SizedBox(height: 10,),

            // 4th line in the Center
            Container(height: 50,width: 400, color: Colors.purple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 50, width: 160,color: Colors.red,
                child: const Scaffold(
                  body: CustomButton(),
                ),
                ),
                const SizedBox(width: 70,),
                Container(height: 50, width: 160,color: Colors.red,
                child: const Scaffold(
                  body: CustomButton(),
                ),
                ),
              ],
            ),
            ),

            const SizedBox(height: 10,),

            // 4th line in the Center
            Container(height: 50,width: 400, color: Colors.blue,
            child: Row(
              children: [
                Container(height: 50, width: 160, color: Colors.red,
                child: const Scaffold(
                  body: CustomButton(),
                ),
                ),
                const SizedBox(
                  width: 70,
                ),
                Container(height: 50, width: 160, color: Colors.red,
                child: const Scaffold(
                  body: CustomButton(),
                ),
                ),
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}