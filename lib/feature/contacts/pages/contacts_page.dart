import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListBody(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Placeholder(),
                  ),
                  title: Text('Contact $index'),
                ),
                Divider(
                  height: 0,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
