import 'package:emplyeesapp/Home/Model/Name.dart';
import 'package:emplyeesapp/Home/view_Model/Services/Firestore_servise.dart';
import 'package:flutter/material.dart';

class HomepageProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  Name? name;

  int get selectedIndex => _selectedIndex;
  String? get username => name?.name;

  void updateIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Future<void> fetchUsername() async {
    final firestoreService = FirestoreServise();
    name = await firestoreService.getName();
    name ??= Name(name: 'Home');
    notifyListeners();
  }
}
