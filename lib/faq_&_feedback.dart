import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/faqs.dart';
import 'package:untitled1/send_us_an_email.dart';import 'package:untitled1/supported_code.dart';

import 'qr_scanner.dart';
import 'tip_for_scanning.dart';

class FaqFeedBack extends StatefulWidget {
  const FaqFeedBack({super.key});

  @override
  State<FaqFeedBack> createState() => _FaqFeedBackState();
}

class _FaqFeedBackState extends State<FaqFeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          // Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text("FAQ & FeedBack",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
        height: 260,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child:   Column(
            children: [
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.transparent,
                child: ListTile(
                  leading: const Icon(Icons.check,color: Colors.blue,),
                  title: const Text("Supported codes",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SupportedCode()));
                  },
                ),
              ),
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.transparent,
                child: ListTile(
                  leading: const Icon(Icons.tips_and_updates,color: Colors.blue,),
                  title: const Text("Tips for scanning",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),),
                  onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TipForScanning()));
                  },
                ),
              ),
            Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.transparent,
                child: ListTile(
                  leading: const Icon(Icons.scanner_outlined,color: Colors.blue,),
                  title: const Text("Scanning Does not work",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QrScanner()));
                  },
                ),
              ),
           
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.transparent,
                child: ListTile(
                  leading: const Icon(Icons.format_quote_sharp,color: Colors.blue,),
                  title: const Text("FAQs",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),),
                  onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FaQs()));
                  },
                ),
              ),
              
              Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.transparent,
                child: ListTile(
                  leading: const Icon(Icons.email,color: Colors.blue,),
                  title: const Text("Send us an email",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),),
                  onTap: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SendUsAnEmail()));
                  },
                ),
              ),
            ],
        ),
            ),
      ),
    );
  }
}