import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class futureBuilder extends StatefulWidget {
  @override
  State<futureBuilder> createState() => _futureBuilderState();
}

class _futureBuilderState extends State<futureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FUTURE BUILDER'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var response =
                await http.get(Uri.parse('https://reqres.in/api/users'));
            List data =
                (json.decode(response.body) as Map<String, dynamic>)['data'];
            print(data);
            print('-------------------------');
            print(data[0]);
            print('-------------------------');
            data.forEach((element) {
              Map<String, dynamic> user = element;
              print(user['email']);
              print(user);
              print('-------------------------');
            });
          },
          child: Text('CLICK'),
        ),
      ),
    );
  }
}
