import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({super.key});

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("QR Scanner",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
        body: Padding(padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji.\n",
          textAlign: TextAlign.start,
          ),
          const Text("Scanning with low budget phone:\n",textAlign: TextAlign.start,
          style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
         const Text("QR Code, a type of bar code that consists of a printed square pattern of small black and white squares that encode data which \n\n can be scanned into a computer system. The black and white squares can represent numbers from 0 to 9, letters from A to Z, \n\n or characters in non-Latin scripts such as Japanese kanji:\n",
          textAlign: TextAlign.start,
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 80,
            padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
  
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.browse_gallery_outlined,color: Colors.white,),
                      Text("Gallery",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.flash_auto,color: Colors.white,),
                      Text("Flash",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.camera_alt_rounded,color: Colors.white,),
                      Text("Reverse",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  child: Column(
                    children: [
                      Icon(Icons.batch_prediction,color: Colors.white,),
                      Text("Batch",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                    ],
                  ),
                ),
              ),
            
            ],
          ),
          ),
          const SizedBox(height: 10,),
           const Text("Good Luck!"),
           const SizedBox(height: 10,),
              const Text("Batch",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),),
            ],
          ),
        ),
        ),
    );
  }
}