import 'package:flutter/material.dart';


class ContactCard extends StatelessWidget {
  final String name;
  final String phoneNumber;

  const ContactCard({
    super.key,
    required this.name,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(phoneNumber),
        trailing: const Icon(Icons.phone),
        onTap: () {
          // Handle tap event, e.g., call the contact
        },
      ),
    );
  }
}
