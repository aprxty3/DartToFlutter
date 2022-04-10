import 'package:flutter/material.dart';
import 'package:relearn/flutter_package/faker.dart';

import 'package:faker/faker.dart';

void main() {
  var faker = new Faker();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Faker_example(),
    );
  }
}
