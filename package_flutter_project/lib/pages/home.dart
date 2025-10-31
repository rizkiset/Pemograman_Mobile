import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HomePage extends StatelessWidget {
  final faker = Faker();
  final date = DateFormat.yMMMMd('en_US').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: AvatarGlow(
            endRadius: 30,
            glowColor: Colors.blueAccent,
            child: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Text(faker.person.firstName()[0]),
            ),
          ),
          title: Text(faker.person.name()),
          subtitle: Text("Joined on $date"),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        );
      },
    );
  }
}

