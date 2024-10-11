
import 'package:flutter/material.dart';
import 'module_six/image_column_row_appbar.dart';
import 'module_seven/button_floatingActonButton_alertDialog.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: ImageColumnRow(),
       home: ButtonAlertDialog(),
    );
  }
}