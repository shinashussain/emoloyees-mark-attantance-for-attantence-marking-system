import 'package:emplyeesapp/utils/theme.dart';
import 'package:flutter/material.dart';

class WaekDashboard extends StatelessWidget {
  const WaekDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'weak',
                style: AppTheme.textTheme.bodyMedium,
              )),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'YYYY-MM-DD',
                    style: AppTheme.textTheme.bodyMedium,
                  ),
                  trailing: Icon(Icons.check_box, color: Colors.teal),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: StadiumBorder(),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("scan now"),
            ),
          ),
        ],
      ),
    );
  }
}
