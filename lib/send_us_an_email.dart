import 'package:flutter/material.dart';

class SendUsAnEmail extends StatefulWidget {
  const SendUsAnEmail({super.key});

  @override
  State<SendUsAnEmail> createState() => _SendUsAnEmailState();
}

class _SendUsAnEmailState extends State<SendUsAnEmail> {

  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;

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
        title: const Text("Feedback or report problems",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('What Problem did you \n encounter?',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),),
                Image.network("https://st.depositphotos.com/2001755/3622/i/950/depositphotos_36220949-stock-photo-beautiful-landscape.jpg",height: 80,width: 80,),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(15),
                  width: MediaQuery.sizeOf(context).width,
                  //height: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ChoiceChip(
                            backgroundColor: Colors.grey,
                            selectedShadowColor: Colors.white,
                            disabledColor: Colors.black,
                            label: const Text("Scan not work",),
                            selected: isSelected1,
                            selectedColor: Colors.blue,
                            onSelected: (newState) {
                              setState(() {
                                isSelected1 = newState;
                              });
                            },
                          ),
                          const SizedBox(width: 15,),
                          ChoiceChip(
                            backgroundColor: Colors.grey,
                            label: const Text("Ads"),
                            selected: isSelected2,
                            selectedColor: Colors.blue,
                            onSelected: (oldState) {
                              setState(() {
                                isSelected2 = oldState;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          ChoiceChip(
                            backgroundColor: Colors.grey,
                            selectedShadowColor: Colors.white,
                            disabledColor: Colors.black,
                            label: const Text("Need more information",),
                            selected: isSelected3,
                            selectedColor: Colors.blue,
                            onSelected: (newState) {
                              setState(() {
                                isSelected3 = newState;
                              });
                            },
                          ),
                          const SizedBox(width: 15,),
                          ChoiceChip(
                            backgroundColor: Colors.grey,
                            label: const Text("Others"),
                            selected: isSelected4,
                            selectedColor: Colors.blue,
                            onSelected: (oldState) {
                              setState(() {
                                isSelected4 = oldState;
                              });
                            },
                          ),
                        ],
                      ),
                      const Divider(),
                      const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Please leave more details sp that we can solve your problem as soon as possible.',
                      hintStyle: TextStyle(
                        color: Colors.black,               
                          ),
                        ),
                      ),
                      const SizedBox(height: 25,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Icon(Icons.camera),
                      ),
                      const SizedBox(height: 15,),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                          ),
                          onPressed: () {}, label: const Text("Submit",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),),
                        icon: const Icon(Icons.email,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}