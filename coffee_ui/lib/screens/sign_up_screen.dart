import 'package:coffee_ui/screens/homescreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text( "New user account",
  style: TextStyle(fontSize: 25, color: Colors.black),),
      ),
        body: SafeArea(
            child: Container(
      padding: EdgeInsets.only(top: 60,),
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/17.jpg"),
            fit: BoxFit.cover,
            // opacity: 0.6
          )),
      child: Center(
        child: Container(

          margin: EdgeInsets.all(10),
          child: Column(
            children: [

              TextField(
                controller: firstname,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.red, fontSize: 22),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drive_file_rename_outline,size: 35,color: Colors.white,),
                    label: Text(
                      "First Name",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lastname,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.red, fontSize: 20),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.drive_file_rename_outline,size: 35,color: Colors.white,),
                    label: Text(

                      "Last Name",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 21,
              ),
              TextField(
                controller: phone,
                keyboardType: TextInputType.phone,
                style: TextStyle(color: Colors.red, fontSize: 20),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone,size: 35,color: Colors.white,),
                    label: Text(
                      "Phone Number",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(

                controller: emailaddress,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.red, fontSize: 20),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined,size: 35,color: Colors.white,),
                    label: Text(
                      "Email Address",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ), SizedBox(
                height: 22,
              ),
              TextField(

                controller: password,
                keyboardType: TextInputType.none,
                style: TextStyle(color: Colors.red, fontSize: 20),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password,size: 35,color: Colors.white, ),

                    label: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 22, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              }, child: Text("Sign In " ,style: TextStyle(color: Colors.black,fontSize: 22),))
            ],
          ),
        ),
      ),
    )));
  }
}
