import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/Home/view/screens/monthspage.dart';
import 'package:emplyeesapp/Home/view/screens/waek_dashbord.dart';
import 'package:emplyeesapp/view_Model/provider/homepageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homepageProvider = Provider.of<HomepageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'john doy',
          style: AppTheme.textTheme.titleMedium,
        ),
      ),
      body: homepageProvider.selectedIndex == 0
          ? WaekDashboard()
          : MonthsScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: homepageProvider.selectedIndex,
        onTap: (index) {
          homepageProvider.updateIndex(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Record'),
        ],
      ),
    );
  }
}
