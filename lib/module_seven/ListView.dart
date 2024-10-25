import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  // ডাটা লিস্ট
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

  MySnackBar (context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('ListView Example',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w700),),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 5,
        radius: const Radius.circular(10),
        interactive: true,
        child: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                MySnackBar(context, item[index]["Name"]);
              },
              child: Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepOrange, width: 0.5),
                  color: Colors.grey.shade200,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item[index]['Name'] ?? 'Unknown',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      item[index]['Title'] ?? 'No Title',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

