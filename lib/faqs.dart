import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FaQs extends StatefulWidget {
  const FaQs({super.key});

  @override
  State<FaQs> createState() => _FaQsState();
}

class _FaQsState extends State<FaQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("FAQs",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
        body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
            children: [
              ExpansionTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10)),
              color: Colors.blue,
            ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.scanner,color: Colors.white,),
                  ),
                title: const Text("Code Can not be read?",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
              children: const [
                ListTile(title:  Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          ),),
              ],
              ),
              const SizedBox(height: 15,),
              ExpansionTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10)),
              color: Colors.blue,
            ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.wifi,color: Colors.white,),
                  ),
                title: const Text("Can not connect to Wi-Fi?",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
              children: const [
                ListTile(title:  Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          ),),
              ],
              ),
              const SizedBox(height: 15,),
              ExpansionTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10)),
              color: Colors.blue,
            ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.link,color: Colors.white,),
                  ),
                title: const Text("Have problem with the link you get?",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
              children: const [
                ListTile(title:  Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          ),),
              ],
              ),
              const SizedBox(height: 15,),
              ExpansionTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10)),
              color: Colors.blue,
            ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.info,color: Colors.white,),
                  ),
                title: const Text("Need more information?",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
              children: const [
                ListTile(title:  Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          ),),
              ],
              ),
              const SizedBox(height: 15,),
              ExpansionTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
              borderRadius: BorderRadius.all( Radius.circular(10)),
              color: Colors.blue,
            ),
                  alignment: Alignment.center,
                  child: const Icon(Icons.image,color: Colors.white,),
                  ),
                title: const Text("Convert a picture to a QR code?",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              ),
              children: const [
                ListTile(title:  Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          ),),
              ],
              ),
            ],
          ),
          ),
        )
    );
  }
}