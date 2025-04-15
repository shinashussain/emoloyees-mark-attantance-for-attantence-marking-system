import 'package:emplyeesapp/utils/theme.dart';
import 'package:flutter/material.dart';

class Custemlisttile extends StatelessWidget {
  String date;
  bool presant;
  Custemlisttile({super.key, required this.date, required this.presant});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        date,
        style: AppTheme.textTheme.bodyMedium,
      ),
      trailing: presant
          ? Icon(Icons.check_box, color: Colors.teal)
          : Icon(Icons.disabled_by_default, color: Colors.red),
    );
  }
}
