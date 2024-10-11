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

           Padding( padding: const EdgeInsets.only(left: 5,right: 5),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const SizedBox(height: 20,width: 20,),
               Container(
                 height: 60,
                 width: 70,
                 margin: const EdgeInsets.only(top: 10,bottom: 10),
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
                 height: 60,
                 width: 70,
                 margin: const EdgeInsets.only(top: 10,bottom: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10), // এটি সঠিক
                   child: Image.asset('images/b.jpeg', fit: BoxFit.cover),
                 ),
               ),
               const SizedBox(height: 20,width: 20,),

               Container(
                 height: 60,
                 width: 70,
                 margin: const EdgeInsets.only(top: 10,bottom: 10),
                 padding: const EdgeInsets.all(0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10), // এটি সঠিক
                   child: Image.asset('images/c.jpeg', fit: BoxFit.cover),
                 ),
               ),
             ],
           ),
             ),
            const SizedBox(height: 20,width: 20,),
         const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,height: 20),
            Text('All books listed ',style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),)
          ],),
           const SizedBox(width: 20,height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20,width: 20,),
                 Container(
                  height: 60,
                  width: 70,
                  margin: const EdgeInsets.only(top: 0,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/book_a.jpeg',fit: BoxFit.cover,),
                  ),
                ),
              const SizedBox(height: 20,width: 20,),
              Container(
                height: 60,
                width: 70,
                margin: const EdgeInsets.only(top: 0,bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/book_a.jpeg',fit: BoxFit.cover,),
                ),
              ),

              const SizedBox(height: 20,width: 20,),
              Container(
                height: 60,
                width: 70,
                margin: const EdgeInsets.only(top: 0, bottom: 10),
                padding: const EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/book_c.png',
                    fit: BoxFit.fill,
                  ),
                ),
              )

            ],
          ),

          ],
        ),
      ),
    );
  }
}