import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:faker/faker.dart';

class INTL_Example extends StatelessWidget {
  const INTL_Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INTL EXAMPLE'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage('https://picsum.photos/id/${870 + index}/200/300'),
            backgroundColor: Colors.grey,
          ),
          title: Text('${faker.person.name()}'),
          subtitle:
              Text('${DateFormat.yMMMd().add_jms().format(DateTime.now())}'),
        ),
      ),
    );
  }
}
