import 'package:flutter/material.dart';
import 'package:rwp_police/first4pages/2nd_page.dart';
import 'first4pages/1st_page.dart';
import 'first4pages/registeration page/otp.dart';
import 'first4pages/welcome.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Rawalpindi Police App",
      theme: ThemeData(
      // brightness: Brightness.dark,
      ),
      home: const OTP(),
    );
  }
}
