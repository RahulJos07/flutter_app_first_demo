import 'package:flutter/material.dart';
import 'package:flutter_app_first/widgets/login_page.dart';
import 'package:flutter_app_first/utils/cv.dart';
import 'package:flutter_app_first/utils/colors.dart';
import 'package:flutter_app_first/widgets/match_schedule_page.dart';

class HomePage extends StatefulWidget {
  final String EmailId;
  final String Password;

  HomePage({Key key, @required this.EmailId, this.Password}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: primaryDark,
        title: new Text('Dashboard'),),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Rahul Joshi'),
              accountEmail: new Text(widget.EmailId),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black26, child: new Text('RJ'),),
              decoration: new BoxDecoration(color: primaryDark),
            ),
            new ListTile(
                leading: Icon(Icons.account_box), title: new Text('Home')),
            Divider(
              height: 2,
            ),
            new ListTile(
                leading: Icon(Icons.account_box), title: new Text('About us')),
            Divider(
              height: 2,
            ),
            new ListTile(leading: Icon(Icons.account_box),
                title: new Text('Contact us')),
            Divider(
              height: 2,
            ),
            new ListTile(leading: Icon(Icons.exit_to_app),
              title: new Text('Logout'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },),

          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
        child: Center(
          child: Column(
            children: <Widget>[

              new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MatchSchedule()));
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                            'assets/flutterlogo.png', width: 100, height: 100),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              msg_match_schedule,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),

              new GestureDetector(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                            'assets/flutterlogo.png', width: 115, height: 100),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              msg_match_history,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

