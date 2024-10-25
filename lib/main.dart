
import 'package:flutter/material.dart';
import 'module_six/image_column_row_appbar.dart';
import 'module_seven/button_floatingActonButton_alertDialog.dart';
import 'module_seven/divider_modalBottomSheet_textField.dart';
import 'module_seven/AppBar_BottomNavigation_listView_ScrollView.dart';
import 'module_seven/ListView.dart';
import 'module_seven/GridView.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ImageColumnRow(),
      // home: ModalBottomSheet(),
      home: AppBarBottomNavigationListViewScrollView(),
      //home: ListViewExample(),
      //home: GridViewExample(),

    );

  }
}
