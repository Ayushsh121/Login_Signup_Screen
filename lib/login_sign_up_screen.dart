import 'package:flutter/material.dart';

import 'sign_up_screen.dart';
import 'login_screen.dart';
class login_sign_up_screen extends StatefulWidget {
  const login_sign_up_screen({Key? key}) : super(key: key);

  @override
  State<login_sign_up_screen> createState() => _login_sign_up_screenState();
}

class _login_sign_up_screenState extends State<login_sign_up_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title:Column(
          children: [
            Row(
              children: [
                Text("Welcome to, ", style: TextStyle(color: Colors.black),),
                Text("sign in continue",style: TextStyle( color: Colors.black),)
              ],
            )
          ],
        ),
          bottom: TabBar(tabs: const [
            Text("SIGNUP",style: TextStyle(fontSize: 30, color: Colors.blueGrey),),
            Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.blueGrey),),
          ],
            onTap:(index){
            print(index);
            } ,
            unselectedLabelColor: Colors.white,
            indicator: const BoxDecoration(color: Colors.red,borderRadius:
            BorderRadius.only(topRight:Radius.circular(20))),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: TabBarView(children: [LoginPage(),
              LoginScreen(),
            ],)),
          ],
        ),
      ),
    );
  }
}
