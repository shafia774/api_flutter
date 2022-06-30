import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:eduset/controllers/api/api.dart';


class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {



  @override
  Widget build(BuildContext context) {
    Future pay() async {

      var response = await Api.payment();
      var data = json.decode(response.body);
      print(data);

    }
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
          child: GestureDetector(
            onTap: () {
              pay();

            },
            child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 40,
                margin: const EdgeInsets.only(top: 20, left: 200),
                decoration: BoxDecoration(
                    color: Color(0xff56549E),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Add',
                )),
          )

      ),
    );
  }
}

