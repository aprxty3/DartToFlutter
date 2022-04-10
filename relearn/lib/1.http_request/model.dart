import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:relearn/1.http_request/models/model_user.dart';

class Model extends StatefulWidget {
  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  List<UserModel> allUser = [];

  Future getAllUser() async {
    try {
      var response = await http.get(Uri.parse('https://reqres.in/api/users'));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allUser.add(
          UserModel(
            avatar: element['avatar'],
            email: element['email'],
            name: element['first_name'] + '' + element['last_name'],
          ),
        );
      });
      print(allUser);
    } catch (e) {
      //print jika terjadi error
      print('Tejadi kesalahan');
      print(e);
    }

    // await Future.delayed(
    //   Duration(seconds: 3),
    // );
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
          } else {
            if (allUser.length == 0) {
              return Center(
                child: Text("TIDAK ADA DATA"),
              );
            }
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(allUser[index].avatar),
                  backgroundColor: Colors.grey[300],
                ),
                title: Text('${allUser[index].name}'),
                subtitle: Text('${allUser[index].email}'),
              ),
            );
          }
        },
      ),
    );
  }
}
