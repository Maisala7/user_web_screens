import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_screen/sign_up.dart';

import 'enter_data.dart';

class cont extends StatefulWidget{
   cont(this.language, {super.key});
  final int language;
  @override
  State<StatefulWidget> createState() =>contState(language);
     
}

class contState extends State<cont>{
   final int language;
  contState(this.language);
  
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

    
  
   return Scaffold(
      backgroundColor:   const Color.fromARGB(255, 206, 214, 226),
    body:    Stack(
      alignment:Alignment.bottomCenter,
      children: [
        Container(
          height: screenHeight/2.7,
         width: screenWidth/2.7,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.only( 
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft:  Radius.circular(10),
              bottomRight: Radius.circular(10),), 
            color:Color.fromARGB(255, 102, 145, 180),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,15),
                blurRadius: 25,
                color: Colors.black12,
              )
            ]
          ),

        ),
         Positioned(
            left: 25,
            top:40,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(language==1?
                'Renewal fees:':'رسوم تجديد البطاقه',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: const Text('7000',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  
                ),
                ),
                     ),
                  ],
                ),
                Row(
                  children: [
                     Text(language==1? 'invoice number :':'معرف الفاتوره',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: const Text('2323359',
                style: TextStyle(
                  fontSize: 20,

                  fontWeight: FontWeight.bold,
                  
                ),
                ),
                     ),
                  ],
                ),
                 Center(
                   child: ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                                 const Color.fromARGB(255, 11, 35, 55)),
                              //end coloring
                              //start bordering
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )) ),
                child: const Icon(
                    Icons.upload,
                    color: Colors.white,
                    ),
             
                    onPressed: () {
                      // if(_paymentformkey.currentState!.validate()){}
          
                       
                      
                      
                    },
                    ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Align(
                       alignment:language==2? Alignment.topRight:Alignment.topLeft,
                    child: Text(language==1?
                      'Please upload the payment notice':'الرجاء ارفاق صورة الاشعار',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 83, 82, 82)
                    
                      ), 
                    ),
                    ),
                 ),
      ]),
            ),
            

    
  ]),
  
  );}}