//import 'package:card_renewal/app_screens/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Api/database_helper.dart';
import 'package:flutter_application_5/app_screen/payment.dart';

List<String> list = <String>['امدرمان', 'khartoum', 'Bahry'];
String? SelectedItem1 ='blood type';
 List<String> listt = <String>[  'O+','O-','A+','A-','B+','B-','AB+','AB-'];
String? SelectedItem2 ='blood type';
class Enter_data extends StatefulWidget {
  const Enter_data(this.language, {super.key});
  final int language;
  @override
  State<StatefulWidget> createState() => Enter_dataState(language);
}

class Enter_dataState extends State<Enter_data> {
  DatabaseHelper _databaseHelper = DatabaseHelper();

  final int language;
  Enter_dataState(this.language);
  final GlobalKey<FormState> _Enter_dataformkey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final secondnameController = TextEditingController();
  final thirdnameController = TextEditingController();
  final fourthnameController = TextEditingController();
  final birthdateController = TextEditingController();
  final placeofbirthController = TextEditingController();
  final jobController = TextEditingController();
  final adressController = TextEditingController();
  final phonenumController = TextEditingController();
  final oldidnumController = TextEditingController();
  String dropdownValue = list.first;
  String dropdownValuee = listt.first;

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
         return Scaffold(
        //background color
       backgroundColor:  Color.fromARGB(255, 135, 159, 196),
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
           child: Container(
            height: screenHeight/1.3,
            width: screenWidth/3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 229, 234, 237),
                  Color.fromARGB(255, 188, 178, 178),
                ],
              ),
               boxShadow: const [
              BoxShadow(
                offset: Offset(0,15),
                blurRadius: 30,
                color: Colors.black12,
           )] ),
              //form address
              child: Form(
                  key: _Enter_dataformkey,
                  child: ListView(
                    children: [
                      Align(
                        alignment:language==2? Alignment.topRight:Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          language == 1
                              ? 'Enter your ID Card data:'
                              : 'الرجاء إدخال معلومات البطاقه القوميه',
                          style:const TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 11, 35, 55),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ),
                      //////// row of frist name and second name felid
                      language==1?
                      Row(
                        children: [
                      
                          Expanded(
                            flex: 2,
                            child: Container(
                              //  margin: const EdgeInsets.only(right: 70.0, left: 70.0),
                                height:screenHeight/12,
                                width: screenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                    controller: firstnameController,
                                    decoration:const InputDecoration(
                                      hintText:"first name",
                                      labelStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 11, 35, 55)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 11, 35, 55)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty ) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                )),
                          ),
                          //second name field
                          Expanded(
                            flex: 2,
                              child: Container(
                                 
                                  height: screenHeight/12,
                                  width: screenWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: TextFormField(
                                      textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                      controller: secondnameController,
                                      decoration:const  InputDecoration(
                                        hintText:"Second name",
                                        
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 11, 35, 55)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 11, 35, 55)),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty ) {
                                          return 'This field is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ))),
                        ],
                      ):
                      //row of second name and frist name in arabic
                      Row(
                        children: [
                           Expanded(
                            flex: 2,
                              child: Container(
                                 
                                  height: screenHeight/12,
                                  width: screenWidth,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: TextFormField(
                                      textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                      controller: secondnameController,
                                      decoration:  InputDecoration(
                                        hintText:'الاسم الثاني',
                                        hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                        labelStyle:const   TextStyle(color: Colors.grey),
                                       enabledBorder:const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 11, 35, 55)),
                                        ),
                                        focusedBorder:const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  255, 11, 35, 55)),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'This field is required';
                                        }
                                        return null;
                                      },
                                    ),
                                  ))),
                                  //////frist name filed in arabic
                                   Expanded(
                                    flex:2 ,
                            child: Container(
                               
                                height:screenHeight/12,
                                width: screenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                    controller: firstnameController,
                                    decoration: InputDecoration(
                                      hintText:'الاسم الاول',
                                      hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                     labelStyle:const TextStyle(color: Colors.grey),
                                      enabledBorder:const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 11, 35, 55)),
                                      ),
                                      focusedBorder:const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 11, 35, 55)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'This field is required';
                                      }
                                      return null;
                                    },
                                  ),
                                )),
                          ),

                      ],

                      ),
                      
                           Container(
                             
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: thirdnameController,
                                  decoration: InputDecoration(
                                    hintText: language == 1
                                        ? "Third name"
                                        : "الاسم الثالث",
                                        hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                        labelStyle:const TextStyle(color: Colors.grey),
                                    enabledBorder:const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder:const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      Expanded(
                          child: Container(
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  decoration:  InputDecoration(
                                    hintText:language==1? "Fourth name":'الاسم الرابع',
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    labelStyle:const TextStyle(color: Colors.grey),
                                    enabledBorder:const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder:const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ))),
            
                           Container(
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: birthdateController,
                                  decoration:  InputDecoration(
                                    hintText:language==1? "Birth date":'تاريخ الميلاد',
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    labelStyle:const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      
                           Container(
                             
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: placeofbirthController,
                                  decoration:  InputDecoration(
                                    hintText:language==1? "Place of birth ":"مكان الميلاد",
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    labelStyle: const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                             
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      Row(
                        children: [
                        ////// // /////////////////////// dropdown no 1
                        Expanded(
                          
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: DropdownButton<String>(
                             value: dropdownValuee,
                             icon: const Icon(
                               Icons.arrow_downward,
                               color: Color.fromARGB(255, 11, 35, 55),
                             ),
                             elevation: 10,
                             style: const TextStyle(
                                 color: Color.fromARGB(255, 11, 35, 55)),
                             underline: Container(
                               height: 2,
                               color:
                                   const Color.fromARGB(255, 11, 35, 55),
                             ),
                             onChanged: (String? value) {
                               // This is called when the user selects an item.
                               setState(() {
                                 dropdownValuee = value!;
                               });
                             },
                             items: listt.map<DropdownMenuItem<String>>(
                                 (String value) {
                               return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value),
                               );
                             }).toList(),
                           ),
                        ),
                            ),
                            ////////////////////////////dropdown no 2
                        Expanded(
                          
                            child: Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: DropdownButton<String>(
                             value: dropdownValue,
                             icon: const Icon(
                               Icons.arrow_downward,
                               color: Color.fromARGB(255, 11, 35, 55),
                             ),
                             elevation: 10,
                             style: const TextStyle(
                                 color: Color.fromARGB(255, 11, 35, 55)),
                             underline: Container(
                               height: 2,
                               color:
                                   const Color.fromARGB(255, 11, 35, 55),
                             ),
                             onChanged: (String? value) {
                               // This is called when the user selects an item.
                               setState(() {
                                 dropdownValue = value!;
                               });
                             },
                             items: list.map<DropdownMenuItem<String>>(
                                 (String value) {
                               return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value),
                               );
                             }).toList(),
                           ),
                         ),
                            )) ]),
                         Container(
                            
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: jobController,
                                  decoration:  InputDecoration(
                                    hintText:language==1?"Job ":"المهنه",
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    
                                    labelStyle: const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      Expanded(
                          child: Container(
                              
                              height: 55,
                              width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: adressController,
                                  decoration: InputDecoration(
                                    hintText:language==1? "Address ":"العنوان",
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                   
                                    labelStyle: const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              ))),
                      
                           Container(
                              
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: phonenumController,
                                  decoration:  InputDecoration(
                                    hintText:language==1? "phone ":"رقم الهاتف",
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    
                                    labelStyle: const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'This field is required';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      
                           Container(
                             
                              height: screenHeight/12,
                              width: screenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextFormField(
                                  textDirection:language==2? TextDirection.rtl:TextDirection.rtl,
                                  controller: oldidnumController,
                                  decoration:  InputDecoration(
                                    hintText:language==1? " National number ":"  الرقم الوطني ",
                                    hintTextDirection:language==2? TextDirection.rtl:TextDirection.ltr,
                                    labelStyle: const TextStyle(color: Colors.grey),
                                    enabledBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 11, 35, 55)),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        value.length <= 10) {
                                      return 'old id number must be 11 num or more ';
                                    }
                                    return null;
                                  },
                                ),
                              )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 11, 35, 55)),
                                //end coloring
                                //start bordering
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ))),
                            child:  Text(language==1?
                              'Next':"التالي",
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                                  
                                  await _databaseHelper.addcard(
                                    firstnameController.text,
                                    secondnameController.text,
                                    thirdnameController.text,
                                    fourthnameController.text,
                                    birthdateController.text,
                                    placeofbirthController.text,
                                    dropdownValuee,
                                    dropdownValue,
                                    jobController.text,
                                    adressController.text,
                                    int.parse(phonenumController.text),
                                    int.parse(oldidnumController.text),
                                  );
                              if (_Enter_dataformkey.currentState!
                                  .validate()) {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return payment(language);
                                  
                               }));
                                Future.delayed(Duration.zero, () {
                                  
                                });}}

),
                        )
                  )])
)),
         )); 
                                  }
                                }
                          
