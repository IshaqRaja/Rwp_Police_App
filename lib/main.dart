import 'package:flutter/material.dart';
import 'column_row_widget/column_row.dart';
import 'custom_widget/custom_button.dart';
import 'custom_widget/customroundimage_widget.dart';
import 'first4pages/4th_page.dart';
import 'myhomepage.dart';

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
      home: const MyButtonScreen(),
    );
  }
}
