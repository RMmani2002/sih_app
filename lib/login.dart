import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';



void main() {
  runApp(lntApp());
}

class lntApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: log()
    );
  }
}



class log extends StatefulWidget {
  const log({super.key});
  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {




  void _showOverlay(BuildContext context) async {


    OverlayState overlayState = Overlay.of(context);

    OverlayEntry overlayEntry3;


    overlayEntry3 = OverlayEntry(builder: (context) {


      return Positioned(
        left: MediaQuery.of(context).size.width *  0.25,
        top: MediaQuery.of(context).size.height * 0.19,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            padding: EdgeInsets.fromLTRB(1,1,1,1),
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.05,

            color: Colors.red.withOpacity(1),
            child: const Material(
              color: Colors.transparent,
              child:
              Center(
                child: Text('Enter Phone Number !',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ),
        ),
      );
    });

    // Inserting the OverlayEntry into the Overlay
    overlayState.insertAll([overlayEntry3]);


    await Future.delayed(Duration(seconds: 2));

    // Removing the third OverlayEntry from the Overlay
    overlayEntry3.remove();
  }






  var size,height,width;

  String dropdownvalue = 'Item 1';


  String num="" ;
  int n=0;








  TextEditingController _SG = TextEditingController();
  TextEditingController _phoneno = TextEditingController();

  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    //TextEditingController _phoneno = TextEditingController(text: phoneno);
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(

        title:const Text(
          "Mine "
              "Owner",
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(child:Center(
        child:
        Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            PhysicalModel(
              color: Colors.white,
              elevation: 10,
              shadowColor: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child:  Container(
                width: width*0.9,
                height: height*0.575,

                child: Column(
                  children: [
                   // SizedBox(height: height*0.01,),

                   // SizedBox(height: height*0.01,),


                    SizedBox(height: height*0.001),



                    //SizedBox(height: height*0.05),

                    Container(
                      width: width*0.8,
                      height: height*0.05,
                      //color: Colors.red,
                      child:
                      const Row(
                        children: [
                          Text("User Name or mail id",textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),),
                        ],
                      ),
                    ),


                    Container(
                      width:width*0.8,
                      height: height*0.05,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade400, //color of border
                            width: 2, //width of border
                          ),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child:Row(
                          children:[
                            Container(
                              width:width*0.1,
                              height: height*0.05,
                              decoration: BoxDecoration(

                                  color: Colors.grey[300]),
                            ),

                            SizedBox(width: width*0.05,),

                            Container(
                                width:width*0.55,
                                height: height*0.07,
                                child:
                                TextField(
                                  controller: _phoneno,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    hintText: 'User Name or mail id',
                                  ),
                                  onSubmitted: (num) {
                                    String typedNumber = num;
                                    print("==========="+num+"===========");   // num is the phone no. which user entered
                                    n=num.length;
                                    print("==========="+"${n}===================");  // n is the length of the phone no. entered
                                  },
                                )
                            ),

                            Container(
                              width:width*0.8,
                              height: height*0.05,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade400, //color of border
                                    width: 2, //width of border
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                              ),

                              child:
                              Row(
                                children:[
                                  Container(
                                    width:width*0.7,
                                    height: height*0.05,
                                    child:
                                    TextField(
                                      controller: _controller,
                                      obscureText: true,
                                      obscuringCharacter: "*",
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        hintText: 'Enter OTP',
                                      ),
                                      onSubmitted: (otp1) {
                                        String typedNumber = otp1;               //opt1 is the otp which user entered
                                        print("==========="+otp1+"===========");
                                        n=otp1.length;                           // n is the length of the otp which user entered
                                        print("==========="+"${n}===================");
                                      },
                                    ),
                                  ),


                                  if(n==4)...
                                  { Icon(Icons.check_circle,color: Colors.green,)}
                                  else if (n=="")...
                                  { Icon(Icons.info_outline,color: Colors.grey,),}
                                  else...
                                    { Icon(Icons.cancel_outlined,color: Colors.red,),}

                                ],
                              ),
                            ),

                            if(n==5)...
                            { Icon(Icons.info_outline,color: Colors.green,)}
                            else if (n==0)...
                            { Icon(Icons.info_outline,color: Colors.grey,),}
                            else...
                              { Icon(Icons.info_outline,color: Colors.red,),}


                          ]
                      ),

                    ),



                    SizedBox(height: height*0.06,),



                    GestureDetector(
                      onTap: (){
                      //  n==5 ?
                       // (Navigator.push(
                         //   context,
                         //   MaterialPageRoute(
                             // builder: (context) => otp(phoneno: _phoneno.text, value: dropdownvalue,  ), ))
                      //  ):
                       // ( _showOverlay(context));
                      },


                      child:
                      Container(
                        width: width*0.8,
                        height: height*0.05,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade600,
                            borderRadius: BorderRadius.circular(5)
                        ),

                        child:
                        const Center(
                          child:

                          Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),

                      ),
                    ),

                    SizedBox(height: height*0.01),

                  ],
                ),


              ),
            ),



          ],
        ),
      ),
      ),
    );
  }
}




