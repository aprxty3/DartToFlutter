import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Http_GET extends StatefulWidget {
  const Http_GET({Key? key}) : super(key: key);

  @override
  State<Http_GET> createState() => _Http_GETState();
}

class _Http_GETState extends State<Http_GET> {
  late String body;

  @override
  void initState() {
    body = 'Belum Ada Data';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Http GET',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              body,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () async {
                var myResponse =
                    await http.get(Uri.parse('https://reqres.in/api/users/2'));

                if (myResponse.statusCode == 200) {
                  //Berhasul Get Data
                  print('BERHASIL GET DATA');
                  Map<String, dynamic> data =
                      json.decode(myResponse.body) as Map<String, dynamic>;
                  setState(() {
                    body = data['data'].toString();
                  });
                } else {
                  //Berhasul Get Data

                  print('Error ${myResponse.statusCode}');
                  setState(() {
                    body = 'Error ${myResponse.statusCode}';
                  });
                }

                // print('----------------------');
                // print(myResponse.statusCode);
                // print('----------------------');
                // print(myResponse.headers);
                // print('----------------------');
              },
              child: Text('GET DATA'),
            ),
          ],
        ),
      ),
    );
  }
}
