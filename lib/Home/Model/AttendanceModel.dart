class Attendance {
  final String date;
  final bool present;
  final String time;

  Attendance({
    required this.date,
    required this.present,
    required this.time,
  });

  // Factory constructor to create an Attendance object from Firestore data
  factory Attendance.fromFirestore(Map<String, dynamic> data, String date) {
    return Attendance(
      date: date,
      present: data['present'] ?? false,
      time: data['time'] ?? 'N/A',
    );
  }
}
