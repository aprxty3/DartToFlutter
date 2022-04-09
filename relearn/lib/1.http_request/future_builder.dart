import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class futureBuilder extends StatefulWidget {
  @override
  State<futureBuilder> createState() => _futureBuilderState();
}

class _futureBuilderState extends State<futureBuilder> {
  Future getAllUser() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FUTURE BUILDER'),
        ),
        body: FutureBuilder(
            future: getAllUser(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text('LOADING......'),
                );
              }
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(),
                  title: Text('Nama Lengkap'),
                  subtitle: Text('@gmail'),
                ),
              );
            })

        // Center(
        //   child: ElevatedButton(
        //     onPressed: () async {
        //       var response =
        //           await http.get(Uri.parse('https://reqres.in/api/users'));
        //       List data =
        //           (json.decode(response.body) as Map<String, dynamic>)['data'];
        //       print(data);
        //       print('-------------------------');
        //       print(data[0]);
        //       print('-------------------------');
        //       data.forEach((element) {
        //         Map<String, dynamic> user = element;
        //         print(user['email']);
        //         print(user);
        //         print('-------------------------');
        //       });
        //     },
        //     child: Text('CLICK'),
        //   ),
        // ),
        );
  }
}
