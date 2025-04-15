import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/Home/view/widgets/custemlisttile.dart';
import 'package:flutter/material.dart';

class Monthlyrecordscreen extends StatelessWidget {
  const Monthlyrecordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'march, 2025',
          style: AppTheme.textTheme.titleMedium,
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Custemlisttile(
            date: 'Date $index',
            presant: index % 2 == 0,
          );
        },
      ),
    );
  }
}
