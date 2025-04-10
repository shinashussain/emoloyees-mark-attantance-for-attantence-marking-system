import 'package:emplyeesapp/view/screens/HomePage.dart';
import 'package:emplyeesapp/view_Model/provider/homepageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomepageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'employees App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
