import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/Home/view/screens/MonthlyRecordScreen.dart';
import 'package:flutter/material.dart';

class MonthsScreen extends StatelessWidget {
  const MonthsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text('monthy dashbord'),
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Monthlyrecordscreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('march, 2025',
                              style: AppTheme.textTheme.bodyMedium),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          indent: 20,
                          endIndent: 20,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
