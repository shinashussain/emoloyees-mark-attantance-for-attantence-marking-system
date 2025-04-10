import 'package:emplyeesapp/view/widgets/popup_menu_button.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('john doy'),
        actions: [
          AppBarPopupMenu(
            function: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [Text()],
        ),
      ),
    );
  }
}
