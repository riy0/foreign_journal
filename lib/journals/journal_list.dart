import '../data/test_data.dart';
import 'package:flutter/material.dart';

class JournalList extends StatefulWidget {
  @override
  _JournalListState createState() => _JournalListState();
}

class _JournalListState extends State<JournalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: journalData.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LimitedBox(
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: 300,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 250,
                          margin: EdgeInsets.only(left: 100),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                journalData[index].imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    journalData[index].title,
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Text(journalData[index].date)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
