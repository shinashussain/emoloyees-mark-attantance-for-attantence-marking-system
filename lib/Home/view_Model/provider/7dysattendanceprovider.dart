import 'package:emplyeesapp/Home/Model/AttendanceModel.dart';
import 'package:emplyeesapp/Home/view_Model/Services/Firestore_servise.dart';
import 'package:flutter/foundation.dart';

class AttendanceProvider extends ChangeNotifier {
  final firestoreService = FirestoreServise();
  List<Attendance> _attendanceData = [];

  List<Attendance> get attendanceData => _attendanceData;

  Future<void> fetchLast7DaysAttendance() async {
    _attendanceData = await firestoreService.fetchLast7DaysAttendance();
    notifyListeners();
  }
}
