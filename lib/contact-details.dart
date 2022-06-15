import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class contactDetails extends StatefulWidget {
  final user;
  final phone;
  final checkIn;

  contactDetails({Key key,
    this.user,
    this.phone,
    this.checkIn
  }): super(key: key);


  @override
  _contactDetailsState createState() => _contactDetailsState();
}


class _contactDetailsState extends State<contactDetails> {

  void initState() {
    setFormat(widget.checkIn);
    super.initState();
  }

  void setFormat(check_in) {
  var temp = DateTime.parse(check_in);
  dateCheckIn = DateFormat('d MMM y').format(temp);
  timeCheckIn = DateFormat('hh:mm').format(temp);
  }

  String dateCheckIn;
  String timeCheckIn;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:  AppBar(
        leading: BackButton(
        ),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Color(0xFFd9e3da)
                  ),
                  color: Color(0xFFd9e3da),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Name", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox( height: 5,),
                    Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color(0xFFd9e3da)
                          ),
                          color: Color(0xFFd9e3da),

                        ),
                        child: Text(widget.user)
                    ),
                    SizedBox( height: 10,),
                    Text("Phone Number", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox( height: 5,),
                    Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color(0xFFd9e3da)
                          ),
                          color: Color(0xFFd9e3da),

                        ),
                        child:  Text(widget.phone)
                    ),
                    SizedBox( height: 10,),
                    Text("Check In", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox( height: 5,),
                    Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color(0xFFd9e3da)
                          ),
                          color: Color(0xFFd9e3da),

                        ),
                        child:  Text(dateCheckIn + " " + timeCheckIn)
                    ),
                    SizedBox( height: 20,),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}






