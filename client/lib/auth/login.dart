import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TapGestureRecognizer _signUpTapRecognizer;

  @override
  void initState() {
    super.initState();
    _signUpTapRecognizer = TapGestureRecognizer()..onTap = _handleSignInTap;
  }

  _handleSignInTap() {
    Navigator.of(context).pushNamed('/signup');
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
                        Navigator.of(context).pushNamed('/signup');
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/home', (Route<dynamic> route) => false);
                      },
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(left: 40.0),
                              child: Text(
                                'Login',
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
                              text: 'Sign Up',
                              style: TextStyle(color: Colors.black54),
                              recognizer: _signUpTapRecognizer),
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
    _signUpTapRecognizer.dispose();
    super.dispose();
  }
}
