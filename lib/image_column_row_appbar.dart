
import 'package:flutter/material.dart';

class ImageColumnRow extends StatelessWidget {
  const ImageColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold (
     appBar: AppBar(
       leading: const Icon(Icons.menu),
       backgroundColor: Colors.grey,
       title: Title(color: Colors.white,
           child: const Text('Image appBar column row ',
             style: TextStyle(
               fontSize: 15,
               fontWeight: FontWeight.bold
             ),
           )
       ),

       actions: [
         IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.black,)),
         IconButton(onPressed: (){}, icon: const Icon(Icons.settings,color: Colors.black,))
       ],
     ),

   );

  }

}