import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Http_GET extends StatefulWidget {
  const Http_GET({Key? key}) : super(key: key);

  @override
  State<Http_GET> createState() => _Http_GETState();
}

class _Http_GETState extends State<Http_GET> {
  late String id;
  late String name;
  late String email;
  @override
  void initState() {
    id = 'Belum Ada Data';
    name = 'Belum Ada Data';
    email = 'Belum Ada Data';
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
              'ID : ${id}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Nama : ${name}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Email : ${email}',
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
                  print(data['data']);
                  setState(() {
                    id = data['data']['id'].toString();
                    email = data['data']['email'].toString();
                    name =
                        '${data['data']['first_name']} ${data['data']['last_name']}';
                  });
                } else {
                  //Berhasul Get Data

                  print('Error ${myResponse.statusCode}');
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
