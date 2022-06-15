import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tech_assessment/educate-user.dart';



class splashScreen extends StatefulWidget {


  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {



  @override
  void initState(){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFFF2F2F2),
        //color: Colors.greenAccent,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              height: 400,
              child:  Align(
                alignment: Alignment.center,
                child: Column(
                  children: [


                    SizedBox( height: 200,),
                  Text("Welcome", style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w700, fontSize: 32)),



                  ],
                )
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [


                    Container(
                      height: 50,
                      child:  Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                            child:  AnimatedSplashScreen(
                              splash:  Image.asset("public/images/animation.png"),
                              nextScreen: educateUser(),
                              splashTransition: SplashTransition.rotationTransition,
                              duration: 5000,
                              backgroundColor: Color(0xFFF2F2F2),
                              //nextScreen: educateUser(),
                            )
                        ),
                      ),
                    )


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


