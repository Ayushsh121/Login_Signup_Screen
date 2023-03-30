
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nauggets_task/RegisterDataModel.dart';
import 'package:nauggets_task/second_screen.dart';
import 'login_screen.dart';
import"package:http/http.dart";
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void validate(){
    if(formkey.currentState!.validate()) {
      print("ok");
    } else{
      print("Error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.all
               (Radius.circular(50)),color: Colors.white),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                   Align(
                     alignment: Alignment.topLeft,
                     child: Padding(
                       padding: EdgeInsets.only(left: 0, top: 20),
                       child: Text("Create an account",style: TextStyle(fontWeight: FontWeight.bold
                           ,fontSize: 30,color: Colors.red),),
                     )
                   ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(autofocus: false,

                          validator: MultiValidator([
                            RequiredValidator(errorText: "Required"),
                            MinLengthValidator(6, errorText: "More than 6 chars")
                          ]),
                          showCursor: false,
                          decoration: InputDecoration(labelText: "NAME",labelStyle:
                          TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                              suffixIcon:Icon(Icons.person,color: Colors.red,size:30,)),
                      )
                      ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        MinLengthValidator(6, errorText: "More than 6 chars")
                      ]),
                      showCursor: false,
                      decoration: InputDecoration(labelText: "EMAIL",labelStyle:
                      TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                          suffixIcon:Icon(Icons.email,color: Colors.red,size:30,)),
                    )
                  ),
                      SizedBox(height: 10,),
                      Align(
                      alignment: Alignment.topLeft,
                        child: Padding(
                            padding: const EdgeInsets.only(),
                            child: Text("contact no.",
                              style: TextStyle(fontSize: 20,
                                fontWeight:FontWeight.bold ),)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: IntlPhoneField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',labelStyle: TextStyle(),
                              suffixIcon: Icon(Icons.call,color: Colors.red,),
                            ),
                            initialCountryCode: 'IN',
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          ),
                        ),
                      ),

                      SizedBox(height: 5,),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: passwordController,
                            showCursor: false,
                            obscureText: true,
                            decoration: InputDecoration(labelText: "PASSWORD",labelStyle:
                            TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                                suffixIcon:Icon(Icons.lock,color: Colors.red,size:30,)),
                          )
                      ),
                      GestureDetector(
                        onTap: (){
                          print("calling ");
                              register("https://reqres.in/api/register",emailController.text.toString(), passwordController.text.toString());
                        },
                        child: ElevatedButton(
                            onPressed: (){
                              print("calling ");
                              register("https://reqres.in/api/register",emailController.text.toString(), passwordController.text.toString());
                            },
                            child:Text("REGISTER")),
                      )
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

  Future<void> register(String uriString, String email, String password) async {
   try{
    RegisterDataModel res;
    print("in function ");
    await post(Uri.parse(uriString),body: {
       'email': email,
       'password' : password
     }).then((value) => {
       print("response $value"),
       if(value.statusCode == 200) {
         res = RegisterDataModel.fromJson(jsonDecode(value.body.toString())),
         if(res != null && res.id != null){
           Get.to(const SecondScreen())
         }
       }
     });
   } catch(ex) {

    }
  }

}

