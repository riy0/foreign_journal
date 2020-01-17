import 'package:flutter/material.dart';
import 'package:foreign_journal/data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String baseUrl =
      // 'https://144463265235597:JCs7IlDL3hX0IHB9G7m9Jh_BvYo@api.cloudinary.com/v1_1/demo/resources/image';
      'https:// @api.cloudinary.com/v1_1/demo/resources/image';

  Future<List<Resources>> _getPhotos() async {
    return await http.get(baseUrl).then((response) {
      Data ans = Data.fromJson(json.decode(response.body.toString()));
      return ans.resources;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              List<Resources> resources = snapshot.data;
              return GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.74,
                shrinkWrap: false,
                children: resources.map((i) {
                  return GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 5.0,
                      child: Column(
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Hero(
                              tag: i.secureUrl,
                              child: Image.network(
                                i.secureUrl,
                                width: MediaQuery.of(context).size.width,
                                height: 208,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: _getPhotos(),
      ),
    );
  }
}
