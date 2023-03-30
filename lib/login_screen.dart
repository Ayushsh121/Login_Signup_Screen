import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:nauggets_task/Forget_password.dart';
import 'package:nauggets_task/RegisterDataModel.dart';
import 'package:nauggets_task/second_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var password = TextEditingController();
  void validate() {
    if(formkey.currentState!.validate()) {
      print("${emailController.text}");
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "Sign in account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.red),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: emailController,
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Required"),
                              MinLengthValidator(6,
                                  errorText: "More than 6 chars")
                            ]),
                            showCursor: false,
                            decoration: const InputDecoration(
                              labelText: "EMAIL",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                              suffixIcon: Icon(
                                Icons.email,
                                color: Colors.red,
                                size: 30,
                              ),
                              hintText: "aayusharma.121@gmail.com",
                            ),
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextFormField(
                            controller: password,
                            showCursor: false,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "PASSWORD",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                suffixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                hintText: "Password"
                            ),

                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: (){
                            ForgetPassword();
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.red),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){
                        // if(formkey.currentState!.validate()){
                        //   Get.to(SecondScreen());
                        // }else{
                        //   return ;
                        // }
                        login("https://reqres.in/api/login",emailController.text.toString(), password.text.toString());
                      },
                        child: Text("LOGIN"),
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

  Future<void> login(String uriString, String email, String password) async {
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
          if(res != null && res.token != null){
            Get.to(const SecondScreen())
          }
        }
      });
    } catch(ex) {

    }
  }
}
