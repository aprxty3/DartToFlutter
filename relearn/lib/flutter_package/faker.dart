import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Faker_example extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
      appBar: AppBar(
        title: Text('FAKER'),
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
          subtitle: Text('${faker.internet.email()}'),
        ),
      ),
    );
  }
}
