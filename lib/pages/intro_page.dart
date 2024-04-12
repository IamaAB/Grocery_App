import 'package:flutter/material.dart';
import 'package:grocery_tute/pages/Homepage.dart';

class Intro_page extends StatelessWidget {
  const Intro_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          // logo
          children: [

           Padding(
             padding: const EdgeInsets.only(top:190, bottom: 40.0, left: 80, right:80),
             child: Image.asset("lib/images/logo.png",

             ),

           ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text("We will Deliver you  Groceries at your doorstep. ",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoSerif'
                )
                ,),
            ),
            // Spacer()
            Text("Fresh Items Everyday "),
            Padding(
              padding: const EdgeInsets.only(top: 49.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home_page()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(6.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 16,
                      color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),

    );
  }
}
