import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:emplyeesapp/Home/view_Model/Services/Firestore_servise.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class QrScannerprovider extends ChangeNotifier {
  static const _secretKey = 'Diun07xxyTn6I2SvyUMVNZaX2I2lJoKm';

  String? scannedCode;
  bool showPopup = false;

  // genarate securr qr key
  String generateExpectedKey() {
    final dateToday = DateTime.now();
    final formatter = DateFormat('dd-MM-yyyy');
    final dateAndKey = formatter.format(dateToday) + _secretKey;

    final bytes = utf8.encode(dateAndKey);
    final qrKey = sha256.convert(bytes);
    return qrKey.toString();
  }

  void onQRScanned(String code) {
    final expectedCode = generateExpectedKey();

    // valid function
    if (code == expectedCode) {
      scannedCode = code;
      showPopup = true;
      notifyListeners();
      FirestoreServise().marktodyattentance();
      Future.delayed(Duration(seconds: 2), () {
        showPopup = false;
        notifyListeners();
      });
    } else {
      scannedCode = "Invalid QR";
      showPopup = true;
      notifyListeners();

      Future.delayed(Duration(seconds: 2), () {
        showPopup = false;
        notifyListeners();
      });
    }
  }

  void reset() {
    scannedCode = null;
    notifyListeners();
  }
}
