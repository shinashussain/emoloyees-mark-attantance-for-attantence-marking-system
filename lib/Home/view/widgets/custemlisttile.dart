import 'package:emplyeesapp/utils/theme.dart';
import 'package:flutter/material.dart';

class Custemlisttile extends StatelessWidget {
  const Custemlisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'YYYY-MM-DD',
        style: AppTheme.textTheme.bodyMedium,
      ),
      trailing: Icon(Icons.check_box, color: Colors.teal),
    );
  }
}
