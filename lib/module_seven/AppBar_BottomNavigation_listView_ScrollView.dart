
import 'package:flutter/material.dart';

class AppBarBottomNavigationListViewScrollView extends StatelessWidget{
  const AppBarBottomNavigationListViewScrollView({super.key});

  // Drawer , BottomNavigationBar, ScrollBar, ListView
  @override
  Widget build(BuildContext context) {
   
    return Scaffold (
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
       actions: [
         IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.black,)),
       ],
       // leading: const Icon(Icons.menu,color: Colors.white,),
      ),
      drawer:  Drawer(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(

              accountName: const Text('Md Sakibul Hasan Santo',style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold
              ),),
              accountEmail: Text('md_santo@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
               // child: Text('J', style: TextStyle(fontSize: 40, color: Colors.white)),
                child: Image.asset(
                  height: 50,
                  width: 50,
                  'images/book_c.png',
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          selectedItemColor: Colors.green,
          onTap: (int Index){

          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
          ]
      ),
    );
  }
  
}