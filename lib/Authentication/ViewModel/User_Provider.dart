import 'package:emplyeesapp/Authentication/ViewModel/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final AuthenticationService _authService = AuthenticationService();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  bool isLoading = false;
  String? errorMessage;

  Future<void> login(
      String email, String password, BuildContext context) async {
    isLoading = true;
    notifyListeners();

    try {
      final user = await _authService.login(email, password);
      if (user != null) {
        Navigator.pushReplacementNamed(context, '/HomeScreen');
      }
    } catch (e) {
      errorMessage = "Login failed: ${e.toString()}";
      print(errorMessage);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
