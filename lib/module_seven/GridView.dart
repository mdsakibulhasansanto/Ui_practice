import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  GridViewExample({super.key});

  final List<Map<String, String>> item = [
    {"Name": "Santo", "Title": "Programmer", "ImageLink": ""},
    {"Name": "Roy", "Title": "Teacher", "ImageLink": ""},
    {"Name": "Fahim", "Title": "Doctor", "ImageLink": ""},
    {"Name": "Panto", "Title": "Engineer", "ImageLink": ""},
    {"Name": "Joy", "Title": "Farmer", "ImageLink": ""},
    {"Name": "Rahim", "Title": "Player", "ImageLink": ""},
    {"Name": "Santa", "Title": "Boxer", "ImageLink": ""},
    {"Name": "Bijoy", "Title": "Gamer", "ImageLink": ""},
    {"Name": "Nuha", "Title": "My wife", "ImageLink": ""},
    {"Name": "Rahima", "Title": "Student", "ImageLink": ""},
    {"Name": "Suma", "Title": "Gamer", "ImageLink": ""},
    {"Name": "Nay", "Title": "My wife", "ImageLink": ""},
  ];

  MySnackBar (context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'GridView Example',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 5,
        radius: const Radius.circular(10),
        interactive: true,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           childAspectRatio: 3/2
          ),
          itemCount: item.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                MySnackBar(context, item[index]["Name"]!);
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                //margin: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepOrange, width: 0.5),
                  color: Colors.grey.shade200,
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Image.asset('images/book_c.png',height: 20,width: 20,),
                      const SizedBox(height: 10,),
                      Text(
                        item[index]['Name'] ?? 'Unknown',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        item[index]['Title'] ?? 'No Title',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
