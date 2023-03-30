import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nauggets_task/second_screen.dart';

class ThiredScreen extends StatefulWidget {
  const ThiredScreen({Key? key}) : super(key: key);

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black45,
              border: Border.all(color: Colors.black26)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            // backgroundColor: Textfeildcolor,
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: Colors.indigo,
            selectedIconTheme: IconThemeData(color: Colors.indigo,size: 30),
            unselectedItemColor: Colors.black45,
            iconSize: 30,
            elevation: 15,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.chartLine,color: Colors.black45,),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.currency_exchange),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_on,color: Colors.black45,),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_rounded,size: 40,
                    color: Colors.indigo,shadows: [
                      Shadow(blurRadius: 5)
                    ],),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,color: Colors.black45,size: 35,
                  ),
                  label: ""
              )
            ],
          ),
        ),
      body: Container(
        decoration:BoxDecoration(borderRadius:
        BorderRadius.only(topLeft: Radius.circular(50) ,
    topRight: Radius.circular(50)),
    color: Colors.indigo),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: InkWell(
                        onTap: (){
                          Get.to(SecondScreen());
                        },
                        child: Icon(Icons.keyboard_arrow_left
                          ,color: Colors.white,size: 40,),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 270,top: 60),
                    child: Icon(FontAwesomeIcons.bars,color: Colors.white,size: 30,),
                  )
                ],),
        Container(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15,left: 20),
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0."
                              "gstatic.com/images?q=tbn:ANd9GcTEhs7aACBwMXL4Xx4iK"
                              "zrYwO6_UdSMAPQtCg&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.green,
                          width: 4.0,
                        ),
                      ),
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child:Text("    Tommy Berns ",
                            style: TextStyle(
                              fontSize: 25,color: Colors.green,
                              fontWeight: FontWeight.bold,
                              shadows:<Shadow>[
                                Shadow(
                                  blurRadius: 5,
                                  color: Colors.indigo,
                                ),
                              ],
                            ),),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text("      Loss Angelies",style:
                            TextStyle(fontWeight:
                            FontWeight.bold,fontSize:20,color:
                            Colors.black26,),),
                            Icon(Icons.location_on,color: Colors.green,
                              shadows: [Shadow(
                                  blurRadius: 15,
                                  color: Colors.green
                              )],
                            ),
                          ],),
                      ],
                          ),
                        ],
                      ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    height: 250,
                    width: 250,
                    child:Stack(
                      children: [
                        Image.asset("assets/png4.jpg"),
                        Positioned(
                          top: 90,left: 60,
                            child: Column(
                              children: [
                                Text("Balance",style: TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.black38
                                  ,fontSize: 25,
                                ),),
                                SizedBox(height: 10,),
                                SizedBox(width: 15,),
                                Text("\$567,57",style: TextStyle(
                                    fontWeight: FontWeight.bold,color: Colors.black54
                                    ,fontSize: 35,shadows: [
                                  Shadow(
                                      blurRadius: 5
                                  )
                                ]
                                ),),
                              ],
                            )),
                        Positioned(
                          top: 50,left: 180,
                          child: FloatingActionButton(
                            backgroundColor: Colors.white,
                              onPressed: (){},
                                  child: Icon(Icons.bar_chart,color:
                                  Colors.indigo,size: 30,),
                          ),
                        )
                      ],)
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 23,),
                    Icon(Icons.circle,color: Colors.green,size: 15,
                      shadows: [Shadow(
                        blurRadius: 15,
                        color: Colors.green
                    )],),
                    SizedBox(width: 15,),
                    Text("INCOMESS",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black54
                        ,fontSize: 25,shadows: [
                      Shadow(
                          blurRadius: 5
                      )
                    ]
                    ),),
                    SizedBox(width: 40,),
                    Icon(Icons.circle,color: Colors.green,size: 15,
                      shadows: [Shadow(
                        blurRadius: 15,
                        color: Colors.green
                    )],),
                    SizedBox(width: 10,),
                    Text("EXPENSES",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black54
                        ,fontSize: 25,shadows: [
                      Shadow(
                          blurRadius: 5
                      )
                    ]
                    ),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 83,),
                    Text("309",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black54
                        ,fontSize: 35,shadows: [
                      Shadow(
                          blurRadius: 5
                      )
                    ]
                    ),),
                    SizedBox(width: 130,),
                    Text("234",style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black54
                        ,fontSize: 35,shadows: [
                      Shadow(
                          blurRadius: 5
                      )
                    ]
                    ),),
                  ],
                ),
                    ],
                  ),
                ),
              ),
            ])
        )
      ));
  }
}
