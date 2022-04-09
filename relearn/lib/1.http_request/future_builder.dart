import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class futureBuilder extends StatefulWidget {
  @override
  State<futureBuilder> createState() => _futureBuilderState();
}

class _futureBuilderState extends State<futureBuilder> {
  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    try {
      var response = await http.get(Uri.parse('https://reqres.in/api/users'));
      List data = (json.decode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allUser.add(element);
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
              }
              return ListView.builder(
                itemCount: allUser.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(allUser[index]['avatar']),
                    backgroundColor: Colors.grey[300],
                  ),
                  title: Text(
                      '${allUser[index]['first_name']} ${allUser[index]['last_name']}'),
                  subtitle: Text('${allUser[index]['email']}'),
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
