import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class http_Delete extends StatefulWidget {
  @override
  State<http_Delete> createState() => _http_DeleteState();
}

class _http_DeleteState extends State<http_Delete> {
  String data = 'Belum Ada Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP DELETE'),
        actions: [
          IconButton(
            onPressed: () async {
              var response =
                  await http.get(Uri.parse('https://reqres.in/api/users/2'));

              Map<String, dynamic> myBody = json.decode(response.body);

              setState(() {
                data =
                    'NAMA : ${myBody['data']['first_name']} ${myBody['data']['last_name']}';
              });
            },
            icon: Icon(
              Icons.get_app,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            data,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('DELETE'),
          ),
        ],
      ),
    );
  }
}
