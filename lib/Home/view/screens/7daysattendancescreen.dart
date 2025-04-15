import 'package:emplyeesapp/Home/view_Model/Services/Firestore_servise.dart';
import 'package:emplyeesapp/Home/view_Model/provider/7dysattendanceprovider.dart';
import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/Home/view/screens/Qr_scanner.dart';
import 'package:emplyeesapp/Home/view/widgets/custemlisttile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SevenDaysAttendanceScreen extends StatelessWidget {
  const SevenDaysAttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AttendanceProvider>(builder: (context, provider, child) {
      final attendanceData = provider.attendanceData;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Last 7 Days Attendance',
                  style: AppTheme.textTheme.bodyMedium,
                )),
            Expanded(
              child: ListView.builder(
                itemCount: attendanceData.length,
                itemBuilder: (context, index) {
                  final data = attendanceData[index];
                  return Custemlisttile(
                    date: data.date,
                    presant: data.present,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QRScannerScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 31, 183, 36),
                  shape: StadiumBorder(),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text(
                  "scan now",
                  style: AppTheme.textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
