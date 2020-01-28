import 'dart:math';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.only(top: 0.0),
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 330.0,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'images/image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 310.0,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100.0),
                          topLeft: Radius.circular(100.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 40.0),
                child: Column(
                  children: <Widget>[
                    Text('test description'),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkResponse(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(Icons.arrow_downward),
                      ),
                    ),
                    InkResponse(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(Icons.edit),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
