import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}
var size,height,width;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  var size,height,width;
  int itemCount = 20;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
     Page4(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: height*0.08,
      // decoration:const BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(20),
      //     topRight: Radius.circular(20),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Column(
                children:[
                  IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.library_books,
              color: Color(0xFF377DFC),
              size: 35,
            )
                : const Icon(
              Icons.library_books_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
                  Text("Data Sheet"),
                ]),),

          SizedBox(
            child: Column(
                children:[
                  IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.add_box,
              color: Color(0xFF377DFC),
              size: 35,
            )
                : const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
                  Text("Add Data"),
                ]),),

          SizedBox(
            child: Column(
                children:[
                  IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.dashboard,
              color: Color(0xFF377DFC),
              size: 35,
            )
                : const Icon(
              Icons.dashboard_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
                  Text("Dashboard"),
                ]),),
          SizedBox(
            child: Column(
                children:[
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.location_on,
              color: Color(0xFF377DFC),
              size: 35,
            )
                : const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
                  Text("Location"),
                ]),),

          SizedBox(
            child: Column(
              children:[
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? const Icon(
              Icons.person,
              color: Color(0xFF377DFC),
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 35,
            ),
          ),
                Text("Profile"),
            ]
          ),
          ),


        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child:
        SingleChildScrollView(
          child:  Column(
            children: <Widget>[
              SizedBox(height: height*0.01,),
              _tabSection(context),
            ],
          ),
        )
            // Column(
            //   children: [



        //         SizedBox(
        //           height: height*0.03,
        //         ),
        //         Container(
        //           child: Row(
        //             children: [
        //               SizedBox(width: width*0.02,),
        //               Container(
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Color(0xFF377DFC),
        //                 ),
        //                 child:  Container(
        //                   width: width*0.3,
        //                   height: height*0.08,
        //                   child:
        //                   Image.asset('lib/images/truck.png', fit: BoxFit.fill,
        //                   ),
        //                 ),
        //               ),
        //
        //               SizedBox(width: width*0.03,),
        //
        //               Container(
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Color(0xFF377DFC),
        //                 ),
        //                 child: Container(
        //                   width: width*0.3,
        //                   height: height*0.08,
        //
        //                   child:
        //                   Image.asset('lib/images/train.png', fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               ),
        //
        //               SizedBox(width: width*0.03,),
        //
        //               Container(
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Color(0xFF377DFC),
        //                 ),
        //                 child: Container(
        //                   width: width*0.3,
        //                   height: height*0.08,
        //                   child:
        //                   Image.asset('lib/images/ship.png', fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               ),
        //
        //               SizedBox(width: width*0.02,),
        //
        //             ],
        //           ),
        //         ),
        //
        //         SizedBox(height: height*0.04,),
        //
        //
        // Container(
        //   width: width*1,
        //   height: height*0.6,
        //   color: Colors.red,
        //   child: ListView(
        //     children: [
        //       Container(
        //         width: width*0.3,
        //         height: height*0.35,
        //         child:const Column(
        //           children: [
        //             Padding(
        //               padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
        //               child:
        //               Text('Truck Status',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
        //             ),
        //
        //           ],
        //         ),
        //         // color: Colors.red,
        //
        //       ),
        //
        //
        //
        //
        //     ],
        //   ),
        // ),

      // ],
      // ),
      ),
    );
    //   ),
    // );
  }
}


Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(tabs: [
            Tab(child: Image.asset("lib/images/truck.png")),
            Tab(child: Image.asset("lib/images/train.png")),
            Tab(child: Image.asset("lib/images/ship.png")),
          ]),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: width*0.9,
          child: TabBarView(children: [
            Container(
              width: width*0.9,
              height: height*0.4,
              //color: Colors.red,
              child:  Container(
                child:
              ListView(
                children: [
                  SizedBox(height: height*0.01,),



                    Container(
                      width: width*0.5,
                      height: height*0.3,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:

                    Column(
                      children: [

                        Container(
                          width: width*0.9,
                          height: height*0.1,
                          //color: Colors.white,
                          child:
                          Row(
                              children:[
                              Container(
                              width: width*0.22,
                              height: height*0.03,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              child:
                                  Center(child: Text('TN02BT1234'),),

                              ),
                                SizedBox(
                                  width: width*0.45,
                                ),

                                Container(
                                  width: width*0.2,
                                  height: height*0.025,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:
                                  Center(child:
                                  Text('IN TRANSIT'),),
                                ),



                              ])

                        ),
                        SizedBox(height: height*0.01,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child:
                        LinearPercentIndicator(
                          animation: true,
                          animationDuration: 2000,
                          width: width*0.8,
                          lineHeight: 14.0,
                          percent: 0.5,
                       //   linearStrokeCap:LinearS
                          //LinearStrokeCap.butt,
                          center: Text("50.0%"),
                          backgroundColor: Colors.white,
                          progressColor: Colors.green,
                        ),
                      ),




                      ],
                    ),
                    ),




                  SizedBox(height: height*0.01,),



                  Container(
                    width: width*0.5,
                    height: height*0.35,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:

                    Column(
                      children: [

                        Container(
                            width: width*0.9,
                            height: height*0.1,
                            //color: Colors.white,
                            child:
                            Row(
                                children:[
                                  Container(
                                    width: width*0.22,
                                    height: height*0.03,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:
                                    Center(child: Text('TN02BT1234'),),

                                  ),
                                  SizedBox(
                                    width: width*0.45,
                                  ),

                                  Container(
                                    width: width*0.23,
                                    height: height*0.025,
                                    decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:
                                    Center(child:
                                    Text('EMERGENCY'),),
                                  ),



                                ])

                        ),
                        SizedBox(height: height*0.01,),

                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child:
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 2000,
                            width: width*0.8,
                            lineHeight: 14.0,
                            percent: 0.3,
                            //   linearStrokeCap:LinearS
                            //LinearStrokeCap.butt,
                            center: Text("30.0%"),
                            backgroundColor: Colors.white,
                            progressColor: Colors.green,
                          ),
                        ),




                      ],
                    ),
                  ),



                  SizedBox(height: height*0.01,),



                  Container(
                    width: width*0.5,
                    height: height*0.35,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:

                    Column(
                      children: [

                        Container(
                            width: width*0.9,
                            height: height*0.1,
                            //color: Colors.white,
                            child:
                            Row(
                                children:[
                                  Container(
                                    width: width*0.22,
                                    height: height*0.03,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:
                                    Center(child: Text('TN02BT1234'),),

                                  ),
                                  SizedBox(
                                    width: width*0.45,
                                  ),

                                  Container(
                                    width: width*0.2,
                                    height: height*0.025,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:
                                    Center(child:
                                    Text('IN TRANSIT'),),
                                  ),



                                ])

                        ),
                        SizedBox(height: height*0.01,),

                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child:
                          LinearPercentIndicator(
                            animation: true,
                            animationDuration: 2000,
                            width: width*0.8,
                            lineHeight: 14.0,
                            percent: 1,
                            //   linearStrokeCap:LinearS
                            //LinearStrokeCap.butt,
                            center: Text("100.0%"),
                            backgroundColor: Colors.white,
                            progressColor: Colors.green,
                          ),
                        ),




                      ],
                    ),
                  ),


                    // color: Colors.red,

                //  ),

                  // Container(
                  //   width: width*0.3,
                  //   height: height*0.35,
                  //
                  //   child:Column(
                  //     // children: [
                  //     //   const Padding(
                  //     //     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                  //     //     child:
                  //     //     Text('Coal types',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                  //     //   ),
                  //     //   Image.asset('lib/images/Group 7.png',),
                  //     // ],
                  //   ),
                  //   // color: Colors.red,
                  //
                  // ),



                ],
              ),

              ),
            ),
            ///1st tab end


            Container(
              child: Text("Articles Body"),
            ),
            Container(
              child: Text("User Body"),
            ),
          ]),
        ),
      ],
    ),
  );
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child:Column(


          children: <Widget>[
            Container(
              width: width *1,
              height: height*0.08,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(5),
                color: Color(0xFF377DFC),
              ),
              child: Row(
                children: [
                  SizedBox(width: width *0.05,),
                  Container(
                    //color: Colors.red,
                    child: Column(
                      children:[
                        Text('Select Report Date',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                        SizedBox(height: height*0.02,),
                        Text('_/_/ TO _/_/_',style: TextStyle( fontSize: 20),),
                      ],
                    ),
                  ),

                  SizedBox(width: width *0.205,),

                  Container(
                    //color: Colors.red,
                    child: Column(
                      children:[
                        IconButton(
                          icon: new Icon(Icons.download_for_offline_outlined),
                          color: Colors.black,
                          iconSize: 30,
                          onPressed: () { /* code */ },
                        ),
                        Text('Download Report',style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  SizedBox(width: width *0.05,),
                ],
              ),

            ),

            SizedBox(height: height*0.05,),

            Container(
              // color: Colors.red,
              width: width*1,
              height: height*0.13,
              child: Row(
                children: [
                  SizedBox(width: width*0.02,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF377DFC),
                    ),
                    child: Column(children: [
                      Container(
                        width: width*0.3,
                        height: height*0.08,


                        child:
                        Image.asset('lib/images/truck.png', fit: BoxFit.fill,
                        ),
                      ),

                      // Text('data',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                      // SizedBox(height: height*0.01,),

                      Text('truck load',),
                      Text('10 Tons',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16),),

                    ],),),
                  SizedBox(width: width*0.03,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF377DFC),
                    ),
                    child: Column(children: [
                      Container(
                        width: width*0.3,
                        height: height*0.08,


                        child:
                        Image.asset('lib/images/train.png', fit: BoxFit.cover,
                        ),
                      ),

                      Text('wagon load',),
                      Text('70 Tons',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16),),
                      //SizedBox(height: height*0.01,),

                    ],),),

                  SizedBox(width: width*0.03,),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF377DFC),
                    ),
                    child: Column(children: [
                      Container(
                        width: width*0.3,
                        height: height*0.08,


                        child:
                        Image.asset('lib/images/ship.png', fit: BoxFit.cover,
                        ),
                      ),

                      // Text('data',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                      // SizedBox(height: height*0.01,),
                      Text('Ship load',),
                      Text('300 Tons',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16),),

                    ],),),

                  SizedBox(width: width*0.02,),

                ],
              ),
            ),

            SizedBox(height: height*0.01,),



            Container(
              width: width*1,
              height: height*0.536,
              // color: Colors.red,
              child: ListView(
                children: [
                  Container(
                    width: width*0.3,
                    height: height*0.35,
                    child:Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                          child:
                          Text('Stakeholder',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Image.asset('lib/images/Group 6.png',),
                      ],
                    ),
                    // color: Colors.red,

                  ),

                  Container(
                    width: width*0.3,
                    height: height*0.35,

                    child:Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                          child:
                          Text('Coal types',style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Image.asset('lib/images/Group 7.png',),
                      ],
                    ),
                    // color: Colors.red,

                  ),

                  // Container(
                  //   width: width*0.3,
                  //   height: height*0.5,
                  //
                  //   // color: Colors.green,
                  //
                  // ),

                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  //final Completer<GoogleMapController> _controller = Completer();
   Page4({Key? key}) : super(key: key);

  static LatLng sourceLocation = LatLng(12.989802, 79.971097);
  static LatLng destination = LatLng(12.984397, 79.973972);
  BitmapDescriptor sourceicone = BitmapDescriptor.defaultMarker;
   BitmapDescriptor destinationicone = BitmapDescriptor.defaultMarker;

   void setCustomMarkerIcon(){
     BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "lib/images/coal1.png")
         .then(
           (icon) {
       sourceicone = icon;
     },);
     BitmapDescriptor.fromAssetImage(ImageConfiguration.empty, "lib/images/truck.png")
         .then(
           (icon) {
         destinationicone = icon;
       },);
   }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child:
      // Column(
      //   children: [
          GoogleMap(initialCameraPosition: CameraPosition(target: sourceLocation, zoom: 16),
            markers: {
              Marker(
                markerId: MarkerId("source"),
                icon: sourceicone,
                position: sourceLocation,
              ),
              Marker(
                markerId: MarkerId("source"),
                icon: destinationicone,
                position: destination,
              )
            },
          ),
      //   ],
      // ),



    );
  }
}


class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child: Center(
          child: Column(
            children: [
              PhysicalModel(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: width*1,
                  height: height*0.25 ,
                  child: Column(
                      children:[


                        Container(
                          width: width*0.3,
                          height: height*0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center( child: Image.network("https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-05-512.png"
                          ),
                          ),),

                        SizedBox(height: height*0.02,),

                        const Text("Name",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),


                      ]
                  ),

                ),
              ),



              SizedBox(height: height*0.01,),


              PhysicalModel(
                color: Colors.white,
                elevation: 5,
                shadowColor: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                child: Container(

                  width: width*1,
                  height: height*0.1,
                  child: Row(
                    children: [
                      Container(
                        width: width*0.3,
                        height: height*0.15,
                        child: Icon(Icons.location_on_outlined, color: Colors.black,size: 40,),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            SizedBox(height: height *0.02,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 190, 0),
                              child: Text("Location",textAlign: TextAlign.left,style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              ),
                            ),

                            SizedBox(height: height *0.01,),

                            Container(
                              width: width*0.69,
                              //height: height*0.15,
                              child:
                              Text("loaction",style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),),
                            ),
                          ],
                        ),
                      ),

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

