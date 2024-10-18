
import 'package:flutter/material.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
           const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){},
              child: const Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                elevation: 8,
                padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 10), // padding
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),side: const BorderSide(
                    color: Colors.grey,width: 2
                )
                ),
                backgroundColor: const Color.fromRGBO(60, 179, 113, 1.0), // White color using RGB
              ),
            ),
            const SizedBox (height: 20,),
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
              child: const Column(

              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Md Sakibul hasan santo'),
                      Divider(
                        height: 20,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Text('BottomSheet'),
                        ],
                      ),

                    )
                    ],
                  );
                }
                );

              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.green,
                    width: 1,
                  ),
                ),
                child: const Center(child: Text("Iam container",style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),)),
              ),
            ),

           const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: TextField(
                maxLength: 1,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'Your name : ',
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelText: 'Enter your name:',
                  filled: true,
                  //prefixIcon: Icon(Icons.man),
                  suffixIcon: const Icon(Icons.man),
                  fillColor: Colors.grey[200],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),

                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType:  TextInputType.text,
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: TextField(
                maxLength: 1,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'Your email :  : ',
                  hintStyle: const TextStyle(color: Colors.grey),
                  labelText: 'Enter your email :',
                  filled: true,
                  suffixIcon: const Icon(Icons.mail,color: Colors.green,),
                  fillColor: Colors.grey[200],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),

                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 2.0,
                    ),
                  ),
                ),
                keyboardType:  TextInputType.text,
              ),
            ),







          ],
        ),
      ),
    );
  }

}