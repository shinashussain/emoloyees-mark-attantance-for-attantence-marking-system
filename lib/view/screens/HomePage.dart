import 'package:emplyeesapp/utils/theme.dart';
import 'package:emplyeesapp/view/screens/monthly_record.dart';
import 'package:emplyeesapp/view/screens/waek_dashbord.dart';
import 'package:emplyeesapp/view/widgets/popup_menu_button.dart';
import 'package:emplyeesapp/view_Model/provider/homepageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final homepageProvider = Provider.of<HomepageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "john doy",
          style: AppTheme.textTheme.titleMedium,
        ),
        actions: [
          AppBarPopupMenu(function: () {}),
        ],
      ),
      body: HomepageProvider().selectedIndex == 0
          ? WaekDashboard()
          : const MonthlyRecord(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          homepageProvider.updateIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
        ],
      ),
    );
  }
}
