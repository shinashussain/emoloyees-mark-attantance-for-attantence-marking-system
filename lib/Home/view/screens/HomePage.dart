import 'package:emplyeesapp/Authentication/ViewModel/User_Provider.dart';
import 'package:emplyeesapp/Home/view/screens/7daysattendancescreen.dart';
import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/Home/view/screens/monthspage.dart';
import 'package:emplyeesapp/Home/view_Model/provider/homepageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    Provider.of<HomepageProvider>(context, listen: false).fetchUsername();
  }

  @override
  Widget build(BuildContext context) {
    final homepageProvider = Provider.of<HomepageProvider>(context);
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          homepageProvider.username ?? 'Home',
          style: AppTheme.textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              userProvider.logout();
            },
          ),
        ],
      ),
      body: homepageProvider.selectedIndex == 0
          ? SevenDaysAttendanceScreen()
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
