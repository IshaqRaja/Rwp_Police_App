import 'package:flutter/material.dart';
import 'fadeindown/fadeindown.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() =>
      _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:const EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img.png', width: 250, fit: BoxFit.cover),
                const SizedBox(height: 30),
                const FadeInDown(
                  child: Text(
                    "Enter verification Code",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                 ),
                FadeInDown(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      "Enter your credentials to log in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                          color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ),

                FadeInDown(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xffeeeeee),
                            blurRadius: 10,
                            offset: Offset(0, 4))
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black.withOpacity(0.13)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 100,),
                FadeInDown(child: MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  minWidth: double.infinity,
                  child: const Text("Request OTP", style: TextStyle(
                      color: Colors.white
                  ),),
                )),

                FadeInDown(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(
                      color: Colors.grey.shade700,
                    ),),
                    TextButton(onPressed: (){},
                        child: const Text("Login"))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
