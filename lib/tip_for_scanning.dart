import 'package:flutter/material.dart';

class TipForScanning extends StatefulWidget {
  const TipForScanning({super.key});

  @override
  State<TipForScanning> createState() => _TipForScanningState();
}

class _TipForScanningState extends State<TipForScanning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tip For Scanning",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        ),
        body: GridView.count(
                  crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children:
                  List.generate(20, (index){
                    return Padding(padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage('https://st.depositphotos.com/2001755/3622/i/950/depositphotos_36220949-stock-photo-beautiful-landscape.jpg'),
                      fit: BoxFit.cover,
                    ),
                    ),
                    )
                    );
                  }
                  ),
  
                ),
    );
  }
}