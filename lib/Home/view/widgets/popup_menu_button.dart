import 'package:flutter/material.dart';

class AppBarPopupMenu extends StatelessWidget {
  final Function function;

  AppBarPopupMenu({required this.function});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Colors.white,
      onSelected: (value) {
        if (value == 'logout') {
          function();
        }
      },
      icon: Icon(Icons.more_vert),
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'logout',
          child: Row(
            children: [
              Icon(Icons.logout),
              SizedBox(width: 8),
              Text('Logout'),
            ],
          ),
        ),
      ],
    );
  }
}
