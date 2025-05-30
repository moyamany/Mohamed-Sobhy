import 'package:flutter/material.dart';

class ContactIconWidget extends StatelessWidget {
  final String contact;
  final IconData icon;
  const ContactIconWidget({
    super.key,
    required this.contact,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white),
        Text(contact, style: TextStyle(color: Colors.white, fontSize: 20)),
      ],
    );
  }
}
