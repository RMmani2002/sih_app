import 'package:flutter/material.dart';


class profile extends StatelessWidget {


  var size,height,width;
  @override
  void initState(){

  }

  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title:
          Align(
            alignment: Alignment.bottomLeft,
            child:
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  // Image.asset('lib/images/App_Bar.png',fit: BoxFit.fitWidth,
                  //   height: MediaQuery.of(context).size.height * 0.8,
                  //   width: MediaQuery.of(context).size.width * 0.3,),

                  SizedBox(width: width*0.33),

                  IconButton(
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                  SizedBox(width: width*0.0001),

                ]),
          )
      ),
      body: Center(
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
                        child: Row( children:[
                          SizedBox(width:width*0.9,),
                          Container(
                              child:
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child:  Container(

                                    padding: EdgeInsets.fromLTRB(0.155,0.155,0.155, 0.155),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.close,color: Colors.black,size: 25,),
                                  )
                              )
                          ),
                        ]
                        ),
                      ),

                      Container(
                        width: width*0.3,
                        height: height*0.15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center( child: Image.network("https://www.bing.com/ck/a?!&&p=bbedf47fc0833be9JmltdHM9MTY5NTM0MDgwMCZpZ3VpZD0zYWYzM2U0OC0wY2U1LTY2ZWEtMmI1Ni0yY2Q1MGQ4NTY3NTEmaW5zaWQ9NTU2OA&ptn=3&hsh=3&fclid=3af33e48-0ce5-66ea-2b56-2cd50d856751&u=a1L2ltYWdlcy9zZWFyY2g_cT1wcm9maWxlIHBpYyBpY29uJkZPUk09SVFGUkJBJmlkPUFFMjYyQjFBMEZDQkYwMTMyNTkzNkY1N0YxN0I1OUQ5MDJCQkE4MkU&ntb=1"),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      width: width*0.3,
                      height: height*0.2,
                      child: Icon(Icons.security_outlined, color: Colors.black,size: 40,),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: height *0.02,),
                          const Text("Security Gate",style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),),

                          SizedBox(height: height *0.01,),

                          const Text("Main Entrance",style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                        ],
                      ),
                    ),

                  ],
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

    );
  }
}