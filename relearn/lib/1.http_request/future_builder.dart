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
    );
  }
}
