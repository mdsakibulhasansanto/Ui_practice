import 'package:flutter/material.dart';

class ImageColumnRow extends StatelessWidget {
  const ImageColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.grey,
        title: Title(
            color: Colors.white,
            child: const Text(
              'Image appBar column row ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            // Image.asset('images/a.jpeg')
            const SizedBox(height: 20,),
            const Row(
              children: [
                SizedBox(height: 20,width: 20,),
                Text('All product shoes : ',
                  style: TextStyle(
                      color: Colors. black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20,width: 20,),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // এটি সঠিক
                    child: Image.asset('images/a.jpeg', fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 20,width: 20,),
                Container(
                  height: 70,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // এটি সঠিক
                    child: Image.asset('images/b.jpeg', fit: BoxFit.cover),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}