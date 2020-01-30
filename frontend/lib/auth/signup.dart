import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TapGestureRecognizer _loginTapRecognizer;

  @override
  void initState() {
    super.initState();
    _loginTapRecognizer = TapGestureRecognizer()..onTap = _handleLoginTap;
  }

  _handleLoginTap() {
    Navigator.of(context).pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: InkWell(
          customBorder: CircleBorder(),
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Record",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "your Journal",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('User Name'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          hintText: 'Input your name',
                          suffixIcon: Icon(Icons.person_outline)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Email'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          hintText: '*******@mail.com',
                          suffixIcon: Icon(Icons.alternate_email)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text('Password'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: TextFormField(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          hintText: 'your password',
                          suffixIcon: Icon(Icons.lock_outline)),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 55,
                    margin: EdgeInsets.only(top: 40, bottom: 30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87.withOpacity(.4),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: RaisedButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/journal-list');
                      },
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 40.0),
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.green,
                              size: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.body1,
                            children: [
                          TextSpan(
                              text: 'Log in',
                              style: TextStyle(color: Colors.black54),
                              recognizer: _loginTapRecognizer),
                        ])),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    _loginTapRecognizer.dispose();
    super.dispose();
  }
}
