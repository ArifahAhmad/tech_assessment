import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:tech_assessment/list-contact.dart';

class educateUser extends StatefulWidget {
  //const educateUser({Key? key}) : super(key: key);

  @override
  _educateUserState createState() => _educateUserState();
}

class _educateUserState extends State<educateUser> {

  GlobalKey<PageContainerState> key = GlobalKey();
  int counter = 0;
  PageController controller;


  @override
  void initState() {
    super.initState();
    controller = PageController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFFF2F2F2),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
                height: 400,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey
                  ),
                  color: Colors.grey

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => listContact()
                            ),
                          );
                        },
                        child:Container(
                          height: 30,
                          width: 30,
                          child:     Text ("skip",style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w700, fontSize: 12),),
                        )
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      height: 300,
                      child: PageIndicatorContainer(
                        key: key,
                        child: PageView(
                            children: <Widget> [
                              Container(
                                child:Column(
                                  children: [
                                    Container(

                                      child:     FloatingActionButton(

                                        onPressed: (){
                                        },
                                        tooltip: 'Increment',
                                        child: Icon(Icons.add),
                                      ),
                                      height: 75,
                                      width: 75,
                                    ),
                                    SizedBox(height: 75),
                                    Text(
                                      "Insert Contact Information",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w700, fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 25),
                                    Text(
                                      "You can find this button on the bottom left of the screen. use this button to add new contact information",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w400, fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                ),
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 60),
                              ),
                              Container(
                                child:Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(12),
                                        margin: EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Color(0xFFd9e3da)
                                          ),
                                          color: Color(0xFFd9e3da),

                                        ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Arifah", style: TextStyle(
                                            color: Color.fromRGBO(79,79,79,1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            //decoration: TextDecoration.underline,
                                          ), ),
                                          SizedBox( height: 5,),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child:  Container(
                                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                                child: Text("19 Aug 2020 03:39", style: TextStyle(
                                                  color: Color.fromRGBO(51,51,51,1),
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w400,
                                                ),),
                                                //child: Text(timeEnd +' on '+ dateEnd, style: C51F12W400,),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  border: Border.all(color: Color(0xFFF2F2F2)),
                                                  color: Color.fromRGBO(255,255,255,1),
                                                )
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 55),

                                    Text(
                                      "To Know More",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w700, fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 25),
                                    Text(
                                      "You can easily tap on the box to get more details about contact information ",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w400, fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 60),
                              ),
                              Container(
                                child:Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xFFd9e3da)
                                        ),
                                        color:  Color(0xFFd9e3da),

                                      ),
                                      child: TextFormField(
                                        readOnly: true,
                                        cursorColor: Color.fromRGBO(242, 242, 242, 1),
                                        style: TextStyle(fontSize: 14, color: Colors.black),
                                        decoration: new InputDecoration(
                                          suffixIcon: Icon(Icons.search),
                                          hintStyle:  TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color:  Color.fromRGBO(79, 79, 79, 1)
                                          ),

                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.transparent),
                                          ),
                                        ),

                                        // validator: widget.validate,
                                      ),
                                    ),
                                    SizedBox(height: 85),
                                    Text(
                                      "Searching",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w700, fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 25),
                                    Text(
                                      "Searching the contact.You can find out contact by searching on this text field",
                                      style: TextStyle(color: const Color(0xFFF2F2F2), fontWeight: FontWeight.w400, fontSize: 10),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.end,
                                ),
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 60),
                              ),
                            ],
                            controller: controller,
                            reverse: false,
                            onPageChanged: (controller){

                              setState(() {
                                counter++;
                              });
                            }
                        ),

                        align: IndicatorAlign.bottom,
                        length: 3,
                        indicatorSpace: 10.0,
                        shape: IndicatorShape.circle(size: 8),
                        indicatorColor: const Color(0xFFF2F2F2).withOpacity(0.3),
                        indicatorSelectorColor: const Color(0xFFF2F2F2),
                      ),
                    ),

                  ],
                )
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFd9e3da),
                  padding: EdgeInsets.zero,
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,

                    MaterialPageRoute(builder: (context) =>

                        listContact()
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comm
    );
  }
}
