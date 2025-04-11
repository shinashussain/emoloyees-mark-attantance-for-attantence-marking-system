import 'package:emplyeesapp/Authentication/ViewModel/User_Provider.dart';
import 'package:emplyeesapp/Authentication/view/LoginScreen.dart';
import 'package:emplyeesapp/Home/view/screens/HomePage.dart';
import 'package:emplyeesapp/Home/view_Model/provider/Qrscannerprovider.dart';
import 'package:emplyeesapp/Home/view_Model/provider/homepageprovider.dart';
import 'package:emplyeesapp/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MyApp(isLoggedIn: user != null));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomepageProvider()),
        ChangeNotifierProvider(create: (_) => QrScannerprovider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'employees App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
          useMaterial3: true,
        ),
        home: isLoggedIn ? HomeScreen() : LoginScreen(),
      ),
    );
  }
}
