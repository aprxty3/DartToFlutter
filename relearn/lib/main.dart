import 'package:flutter/material.dart';
import 'package:relearn/flutter_package/avatar_glow.dart';
import 'package:relearn/flutter_package/bottom_nav_bar.dart';
import 'package:relearn/flutter_package/faker.dart';

import 'package:faker/faker.dart';
import 'package:relearn/flutter_package/intl.dart';

void main() {
  var faker = new Faker();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Avatar_Glow(),
    );
  }
}
