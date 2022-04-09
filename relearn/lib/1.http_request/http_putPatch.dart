import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class http_PutPatch extends StatefulWidget {
  @override
  State<http_PutPatch> createState() => _http_PutPatchState();
}

class _http_PutPatchState extends State<http_PutPatch> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = "BELUM ADA DATA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Http PUT/PATCH',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameC,
                autocorrect: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: jobC,
                autocorrect: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Job',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  var myResponse = await http.put(
                    Uri.parse('https://reqres.in/api/users/2'),
                    body: {
                      "name": nameC.text,
                      "job": jobC.text,
                    },
                  );

                  Map<String, dynamic> data =
                      json.decode(myResponse.body) as Map<String, dynamic>;

                  setState(() {
                    hasilResponse = "${data['name']} - ${data['job']}";
                  });
                },
                child: Text('CLICK'),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(hasilResponse),
            ],
          ),
        ),
      ),
    );
  }
}
