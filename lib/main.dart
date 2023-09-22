import 'package:flutter/material.dart';

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
    const Page4(),
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
          "Mine Owner",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
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
      height: height*0.1,
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
              size: 45,
            )
                : const Icon(
              Icons.library_books_outlined,
              color: Colors.black,
              size: 45,
            ),
          ),
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
              size: 45,
            )
                : const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 45,
            ),
          ),
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
              size: 45,
            )
                : const Icon(
              Icons.dashboard_outlined,
              color: Colors.black,
              size: 45,
            ),
          ),
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
              size: 45,
            )
                : const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
              size: 45,
            ),
          ),

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
              size: 45,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 45,
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
        child: Text(
          "Page Number 1",
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
                    height: height*0.5,
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
                    height: height*0.5,
                    // color: Colors.green,

                  ),

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
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 4",
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
        child: Text(
          "Page Number 5",
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

