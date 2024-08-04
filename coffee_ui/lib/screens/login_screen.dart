import 'package:coffee_ui/screens/homescreen.dart';
import 'package:coffee_ui/screens/sign_up_screen.dart';
import 'package:coffee_ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 100, bottom: 40),
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("images/16.jpg"),
                  fit: BoxFit.cover,
                  // opacity: 0.6
                )),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login here!",
                          style: TextStyle(fontSize: 22, color: Colors.white,backgroundColor: Colors.blueGrey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: userController,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 22, color: Colors.orange),
                          decoration: InputDecoration(
                              label: Text(
                                "Username",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2, color: Colors.deepOrangeAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,
                                  ))),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: passwordcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(fontSize: 22, color: Colors.orange),
                          decoration: InputDecoration(
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    width: 2, color: Colors.deepOrangeAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(width: 2, color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    width: 2,
                                  ))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.orange,
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                              child: Text("Sign Up",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1)),
                            )
                          ],
                        ),




                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

    );
  }
}
