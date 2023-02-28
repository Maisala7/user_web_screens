

import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_screen/cont.dart';

import 'messege.dart';


class pay extends StatefulWidget{

   const pay(this.language, {super.key});
  final int language;
  @override
  State<StatefulWidget> createState() {
    return PayState(language);
}
}
class PayState extends State<pay>{

   final int language;
 PayState (this.language);
  final GlobalKey<FormState>_paymentformkey= GlobalKey<FormState>();
  final processController=TextEditingController();
  @override
  Widget build(BuildContext context) {
       database_helper data =database_helper();

     double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
        var box=cont(language);
   return Scaffold(
     backgroundColor:   const Color.fromARGB(255, 206, 214, 226),
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
      Form(
     child:ListView(
        children:[ 
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:90.0),
              child: Container(
              color: Color.fromARGB(255, 99, 110, 128), 
             height: screenHeight/2.7,
             width: screenWidth/2.7,
              
            child: box,
          ),
            ),
          ),
             SizedBox(
                     
                  height: screenHeight/5,
                      width: screenWidth/6,
                       child: Padding(
                         padding: const EdgeInsets.only(right:250,left: 250,top:20),
                         child: TextFormField(
                           textDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                          controller: processController,
                          decoration: InputDecoration(
                            hintText:language==1? " Enter process number":"ادخل رقم العمليه",
                            hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                            labelStyle:  const TextStyle(color: Colors.grey),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 11, 35, 55)),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 11, 35, 55)),
                            ),
                          ),
                           validator: (value) {
                            if(value!.isEmpty ||
                            value== null||
                            value.length>=10){
                              return ' process number must be 11 num or more ';
                            }
                            return null;
                           
                          },
                      ),
                       )),
                       Center(
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
             
                         child: Text(language==1?
                           'ok':'تم',
                           style:const TextStyle(
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                         
                           onPressed: () {
                             data.showMyDialog(
                               context: context,
                               title:language==1? 'Done' :'تم ',
                               content:language==1?
                               'You have successfully completed the first part of the renewal procedures.'
                               'You will be contacted to complete the procedures at the Public Services Complex':
                               ' لقد اكملت الجزء الاول من اجراءات التجديد بنجاح سيتم التواصل معك لاكمال الاجراءات في مجمع خدمات الجمهور', 
                               page:pay(language)
                             );

                             
                           },
                           ),
                       ) ])
            )
            
            
            );
            }}