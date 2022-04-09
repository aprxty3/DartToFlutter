import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class http_Delete extends StatefulWidget {
  @override
  State<http_Delete> createState() => _http_DeleteState();
}

class _http_DeleteState extends State<http_Delete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP DELETE'),
      ),
    );
  }
}
