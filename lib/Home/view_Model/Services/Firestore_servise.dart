import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emplyeesapp/Home/Model/AttendanceModel.dart';
import 'package:emplyeesapp/Home/Model/Name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class FirestoreServise {
  final _firestore = FirebaseFirestore.instance;
  User? user = FirebaseAuth.instance.currentUser;

  Future<String?> getemplyeeid() async {
    final useremail = user?.email;
    try {
      final snapshot = await _firestore
          .collection('user')
          .where('email id', isEqualTo: useremail)
          .get();
      if (snapshot.docs.isNotEmpty) {
        return snapshot.docs.first.id;
      }
    } catch (e) {
      print('Failed to get employee ID: $e');
    }
    return null;
  }

  Future<void> marktodyattentance() async {
    final dateTime = DateTime.now();
    final dateformatter = DateFormat('dd-MM-yyyy');
    final timeformatter = DateFormat('hh : mm a');
    final employeeId = await getemplyeeid();
    String dateid = dateformatter.format(dateTime);
    String time = timeformatter.format(dateTime);
    try {
      await _firestore
          .collection('attendance')
          .doc(dateid)
          .collection("records")
          .doc(employeeId)
          .set({'present': true, 'time': time});
      print('attentance mark success');
    } catch (e) {
      print('set data failed $e');
    }
  }

  Future<Name> getName() async {
    final emplyeeid = await getemplyeeid();
    try {
      final snapshot = await _firestore.collection('user').doc(emplyeeid).get();
      if (snapshot.exists) {
        final employeeName = snapshot.data()?['name'];
        print('$employeeName 222222222222222');
        return Name(name: employeeName);
      }
    } catch (e) {
      print('Failed to get employee name: $e');
    }
    return Name(name: '');
  }

  Future<List<Attendance>> fetchLast7DaysAttendance() async {
    final employeeId = await getemplyeeid();

    final now = DateTime.now();
    final last7Days =
        List.generate(7, (index) => now.subtract(Duration(days: index)));
    print("$last7Days 77777777777777777");

    List<Attendance> attendanceData = [];

    try {
      for (var date in last7Days) {
        final dateId = DateFormat('dd-MM-yyyy').format(date);
        final snapshot = await _firestore
            .collection('attendance')
            .doc(dateId)
            .collection('records')
            .doc(employeeId)
            .get();

        if (snapshot.exists) {
          attendanceData
              .add(Attendance.fromFirestore(snapshot.data()!, dateId));
        } else {
          attendanceData
              .add(Attendance(date: dateId, present: false, time: 'N/A'));
        }
      }
    } catch (e) {
      print('Failed to fetch attendance data: $e');
    }

    return attendanceData;
  }
}
