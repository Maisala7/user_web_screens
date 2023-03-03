


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_screen/sign_up.dart';

import 'cont.dart';


class Firist_screen extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return Firist_screenState();
}
}
class Firist_screenState extends State<Firist_screen>{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
        

    
   return Scaffold(
    backgroundColor: const Color.fromARGB(255, 206, 214, 226),
     appBar:AppBar(
      backgroundColor:Color.fromARGB(255, 11, 35, 55),
       leading: Padding(
         padding: const EdgeInsets.all(5.0),
         child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                'images/im.jpg.jpg',
                 )),
       ),
       elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 135, 159, 196),
            child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              'images/im.jpg.jpg',
          )),
          ),
         ] ),
      body: 
  Center(
      child:
       Column(
         children: [
          Text(
            'نظام تجديد البطاقه القوميه',
            textDirection:TextDirection.rtl,
           style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          
          ),
           Container(
             height: screenHeight/1.3,
             width: screenWidth/3,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                   
                    Color.fromARGB(255, 144, 168, 203),
                  Color.fromARGB(255, 102, 145, 180),
                  
               ] ),
               boxShadow: const [
                  BoxShadow(
                    offset: Offset(0,15),
                    blurRadius: 30,
                    color: Colors.black12,
    )]),
             child:Column(children:[
              Expanded(
                child: CircleAvatar(
                radius: screenWidth/10,                   
                backgroundColor: const Color.fromARGB(255, 206, 214, 226),
                child:  getImageAsset(),
                       ),
              ),
            
            Row(
              children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                                     style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                                      const  Color.fromARGB(255, 11, 35, 55)),
                                    //end coloring
                                    //start bordering
                                    shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    )) ),
                                     
                        child: const Text(
                          'العربيه',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                               return const Sign_up(2);
                          }));
                            
                            
                            
                          },
                         ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                                     style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                                      const  Color.fromARGB(255, 11, 35, 55)),
                                    //end coloring
                                    //start bordering
                                    shape:
                                        MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    )) ),
                                     
                        child: const Text(
                          'English',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        
                          onPressed: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                               return const Sign_up(1);
                          }));
                            
                            
                            
                          },
                         ),
                      ),
                    ),
              ]  )
                
             ] ) 
             ),
         ],
       )
       ),
    );
    }}
 Widget getImageAsset(){
  AssetImage assetimage= const AssetImage('images/im.jpg.jpg');
  Image image=Image(image: assetimage,width: 150.0,height: 150.0,);

  return ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  clipBehavior: Clip.hardEdge,
                  child: image,
                  
                );
 }