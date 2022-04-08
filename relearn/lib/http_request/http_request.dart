import 'package:flutter/material.dart';

// GET Berguna untuk mendapatkan data di server
// POST Berguna untuk mengirim data ke server //PATCH untuk mengupdate data, sedangkan PUT lebih ke replace/menukar data
// PUT/PATCH Berguna untuk mengubah data di server
// DELETE Berguna untuk menghapus data di server

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
              onPressed: () {},
              child: Text('GET DATA'),
            ),
          ],
        ),
      ),
    );
  }
}
