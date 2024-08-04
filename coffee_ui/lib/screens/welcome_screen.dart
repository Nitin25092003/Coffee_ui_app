import 'package:coffee_ui/screens/homescreen.dart';
import 'package:coffee_ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("images/Hot_Coffee.jpg"),
              fit: BoxFit.cover,
              // opacity: 0.6
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Coffee Shop",style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.black
            ),
            ),
            Column(
              children: [
                Text("Feeling Low?",style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),),
                SizedBox(height: 10,),
                Text("Take a sip of a coffee",style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1
                ),),
                SizedBox(height: 100,),
                InkWell(
                  splashColor: Colors.black,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()
                        // HomeScreen()
                    ));
                  },
                  child: Ink(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1),),
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
