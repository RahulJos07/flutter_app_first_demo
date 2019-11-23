import 'package:flutter/material.dart';
import 'package:flutter_app_first/widgets/home_page.dart';
import 'package:flutter_app_first/utils/cv.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String tag = 'login-page';
  String _email;
  String _password;
  final _formkey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/flutterlogo.png'),
      ),
    );

    final email = new Padding(
      padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
      child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Email Id',
            contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0)),
          ),
          validator: (value) {
            Pattern pattern = rg_expression_email;
            RegExp regex = new RegExp(pattern);
            if (value.isEmpty) {
              return enter_email_id;
            } else if (!regex.hasMatch(value)) {
              return enter_valid_email_id;
            }
          },
          onSaved: (val) => _email = val
      ),
    );

    final password = new Padding(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: TextFormField(
          obscureText: true,
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0)),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return enter_password;
            } else if (value.length < 4) {
              return password_mare_than_four_character;
            }
          },
          onSaved: (val) => _password = val
      ),
    );

    void _performLogin() {
      final snackbar = SnackBar(
        /*content: Text('Email: $_email, Passsword: $_password'),*/
        content: Text(msg_login_success),
      );
      _scaffoldKey.currentState.showSnackBar(snackbar);
    }

    void dialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("RJ"),
            content: new Text(msg_login_success),
            actions: <Widget>[
              new FlatButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                    HomePage(EmailId: _email, Password: _password)));
              }, child: new Text("Ok")),
              new FlatButton(onPressed: () {
                Navigator.pop(context);
              }, child: new Text("Cancel"))
            ],
          );
        },
      );
    }

    final loginButton = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        onPressed: () {
          if (_formkey.currentState.validate()) {
            _formkey.currentState.save();
            //_performLogin();
            dialog();
          }
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );


    final forgotlabel = FlatButton(
      child: Text(
        'Forgot password?', style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {

      },
    );

    return Scaffold(
      key: _scaffoldKey,
      body: Form(
        key: _formkey,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                logo,
                email,
                password,
                loginButton,
                forgotlabel
              ]
            ),
          ),
        ),
      ),
    );
  }
}
