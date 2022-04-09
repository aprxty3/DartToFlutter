import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class http_PutPatch extends StatefulWidget {
  @override
  State<http_PutPatch> createState() => _http_PutPatchState();
}

class _http_PutPatchState extends State<http_PutPatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP PUT/PATCH'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
