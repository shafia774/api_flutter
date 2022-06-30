import 'dart:convert';

import 'package:eduset/controllers/api/api.dart';
import 'package:flutter/material.dart';
import 'package:eduset/models/listmodel.dart';

class CityPage extends StatefulWidget {
  @override
  _CityPageState createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "list",
          style: TextStyle(
              fontFamily: 'Varela', fontSize: 20.0, color: Color(0xFF46EA13)),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue.shade400),
            padding: EdgeInsets.only(right: 20.0),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Container(
          child: FutureBuilder(
            future: Api.fetchCity(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasError)
              return Text('Error: ${snapshot.error}');

              else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,int index) {
                    City product = snapshot.data[index];
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product.name,
                                  style: const TextStyle(fontSize: 20)),
                              Image.asset(
                                product.image,
                                width: 600.0,
                                height: 240.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          )
      ),
    );
  }
}

