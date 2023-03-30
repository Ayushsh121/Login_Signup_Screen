import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nauggets_task/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
          elevation: 5,
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius:
        BorderRadius.only(topLeft: Radius.circular(50) ,
            topRight: Radius.circular(50)),
            color: Colors.indigo),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: InkWell(
                      onTap: (){
                        Get.to(ThiredScreen());
                        },
                      child: Icon(Icons.keyboard_arrow_right
                        ,color: Colors.white,size: 40,),
                    )),
                  Padding(
                    padding: const EdgeInsets.only(left: 270,top: 60),
                    child: InkWell(
                      onTap: (){
                        Get.to(ThiredScreen());
                      },
                        child: Icon(FontAwesomeIcons.bars,color: Colors.white,size: 30,)),
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
                                )
                              ],),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 35,),
                          Text("Balance",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.black38
                              ,fontSize: 20,
                          ),),
                          SizedBox(width: 20,),
                          Text("\$567,57",style: TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.black54
                              ,fontSize: 35,shadows: [
                            Shadow(
                                blurRadius: 5
                            )
                          ]
                          ),),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 70,),
                          FloatingActionButton(
                              onPressed: (){},
                            backgroundColor: Colors.white,
                            elevation: 1,
                            child: Icon(Icons.add,color: Colors.indigo,size: 40,
                              shadows: [
                              Shadow(
                                color: Colors.green,
                                blurRadius: 5
                              ),
                            ],),
                          ),
                          SizedBox(width: 30,),
                          FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: Colors.white,
                            elevation: 1,
                            child: Icon(Icons.search,color: Colors.indigo,size:35,
                              shadows: [
                                Shadow(
                                    color: Colors.green,
                                    blurRadius: 5
                                ),
                              ],),
                          ),
                          SizedBox(width: 30,),
                          FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: Colors.white,
                            elevation: 1,
                            child: Icon(Icons.stacked_bar_chart_sharp,
                              color: Colors.indigo,size: 40,
                              shadows: [
                                Shadow(
                                    color: Colors.green,
                                    blurRadius: 5
                                ),
                              ],),
                          )
                        ],
                      ),
                      Container(
                        height: 250,
                        width: 370,
                        child: Card(
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(30),
                          elevation: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 200,top: 10),
                                child: Container(
                                  height:30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black26
                          ),
                                    child: Center(
                                      child: Text("CARD",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,fontSize: 20,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 15
                                          )
                                        ]
                                      ),),
                                    )),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 1, 50, 0),
                                child: Text("4357 8935 4792 4893 ",style:
                                TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.bold,
                                  color: Colors.white,shadows: [
                                  Shadow(
                                      blurRadius: 20
                                  )
                                ]
                                ),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text("Card number",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.bold,
                                  fontSize: 15,shadows: [
                                  Shadow(
                                      blurRadius: 15
                                  )
                                ]
                                ),),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  SizedBox(width: 40,),
                                  Text("Tommy Burns",style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 17,shadows: [
                                    Shadow(
                                        blurRadius: 15
                                    )
                                  ]
                                  ),),
                                  SizedBox(width: 40,),
                                  Text("05/21",style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 17,shadows: [
                                    Shadow(
                                        blurRadius: 15
                                    )
                                  ]
                                  ),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  SizedBox(width: 45,),
                                  Text("Name",style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 17,shadows: [
                                    Shadow(
                                        blurRadius: 15
                                    )
                                  ]
                                  ),),
                                  SizedBox(width: 95,),
                                  Text("Date",style: TextStyle(
                                      color: Colors.white,fontWeight: FontWeight.bold,
                                      fontSize: 17,shadows: [
                                    Shadow(
                                        blurRadius: 15
                                    )
                                  ]
                                  ),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          Row(children: [
                            SizedBox(width: 30,),
                            Text("My Carrds",style: TextStyle(
                                color: Colors.black87,fontWeight: FontWeight.bold,
                                fontSize: 25,shadows: [
                              Shadow(
                                  blurRadius: 15
                              )
                            ]
                            ),),
                            SizedBox(width: 200,),
                            Icon(Icons.arrow_forward_ios,shadows: [
                              Shadow(blurRadius: 5)
                            ],)
                          ],),
                          SizedBox(height: 25),
                          Row(children: [
                            SizedBox(width: 30,),
                            Text("Transactions",style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,shadows: [
                              Shadow(
                                  blurRadius: 15
                              )
                            ]
                            ),),
                            SizedBox(width: 170,),
                            Icon(Icons.arrow_forward_ios,shadows: [
                              Shadow(blurRadius: 5)
                            ],)
                          ],)
                        ],
                      )
                    ],),
                ),
              ),
              ],),
        )
      ),
    );
  }
}








