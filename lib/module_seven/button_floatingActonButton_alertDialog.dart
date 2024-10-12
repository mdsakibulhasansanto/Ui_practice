import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/module_six/image_column_row_appbar.dart';
import 'package:flutter_ui_practice/module_six/image_column_row_appbar.dart';
class ButtonAlertDialog extends StatelessWidget {
  const ButtonAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        toolbarOpacity: 0.8,
        elevation: 0.6,
        title: Title(
            color: Colors.black,
            child: const Text(
              'Button',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )),
        backgroundColor: const Color.fromRGBO(60, 179, 113, 1.0),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            splashColor: Colors.blue,
            highlightColor: Colors.grey,
            tooltip: 'Searching button',
            onPressed: () {},
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const SizedBox(height: 20,),
             GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImageColumnRow()),
                );
              },
              child: Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(60, 179, 113, 1.0),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  'Container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )

             ),
            const SizedBox(height: 20,),
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
              //  print('Custom Icon Button Pressed');
              },
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
              child:  Row(
                mainAxisSize: MainAxisSize.min,
               children: [
                 Container(
                   padding:  const EdgeInsets.only(left: 5,right: 5,top: 5,bottom:5),
                   height: 30,
                   width:30,
                   decoration: BoxDecoration(
                     color: Colors.blueGrey,
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(0),
                       child: Image.asset('images/book_c.png')
                   ),
                 ),
                 const SizedBox(width: 20),
                 const Text('Books house',
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic
                   ),
                 ),
               ],
              ),
            ),
           const SizedBox(height: 20,width: 20,),

            Container(
              width: 190,
              height: 70,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(60, 179, 113, 1.0), // White color using RGB
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child:   ElevatedButton(
                onPressed: () {
                 // print('Custom Icon Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 8,
                  padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 15), // padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  backgroundColor: const Color.fromRGBO(60, 179, 113, 1.0), // White color using RGB
                ),
                child:  Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding:  const EdgeInsets.only(left: 5,right: 5,top: 5,bottom:5),
                      height: 30,
                      width:30,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset('images/book_c.png')
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text('Container EleButton',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ],
                ),
              ),
            ),
           const SizedBox(height: 20,),
            OutlinedButton(
              onPressed: () {
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.red, width: 2),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'OutLineButton',style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
            ),

           const SizedBox(height: 20,),

            TextButton(
              onPressed: () {

                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirmation'),
                      content: const Text('Are you sure you want to delete this item?'),
                      actions: [
                        TextButton.icon(
                          onPressed: () {
                            // Action to be performed when button is pressed
                          },

                          label: const Text(
                            'Yes',
                            style: TextStyle(
                              color: Colors.red, // Text color
                              fontSize: 16, // Text size
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Delete'),
                        ),
                      ],
                    );
                  },
                );

              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // প্যাডিং
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // টেক্সটের শৈলী
              ),
              child: const Text(
                'TextButton',style:TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.only(bottom: 20,right: 10),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90)
        ),
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.push দিয়ে নতুন স্ক্রিনে যাওয়ার জন্য
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImageColumnRow()),
            );
          },
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(90)
          ),
          child: const Icon(Icons.add),
        ),
      ),

    );
  }
}
