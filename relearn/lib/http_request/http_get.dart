import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Http_GET extends StatelessWidget {
  const Http_GET({Key? key}) : super(key: key);

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
            const Text(
              'Data',
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

                print(myResponse.body);
                print('----------------------');
                print(myResponse.statusCode);
                print('----------------------');
                print(myResponse.headers);
                print('----------------------');
              },
              child: Text('GET DATA'),
            ),
          ],
        ),
      ),
    );
  }
}
