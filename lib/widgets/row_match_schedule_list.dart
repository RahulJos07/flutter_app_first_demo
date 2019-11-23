import 'package:flutter/material.dart';
import 'package:flutter_app_first/utils/cv.dart';

class MatchScheduleRowFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(msg_match_schedule),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[

                    //First Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "T20 1 of 56",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Today",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                    //Second Row
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/rcb.jpeg"),)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "RCB",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Third Row
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/csk.jpeg"),)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "CHN",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Fourth Row
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "8:00 PM",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
