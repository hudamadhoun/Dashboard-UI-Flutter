import 'package:flutter/material.dart';

import '../../responsive.dart';
import '../Dashboard/dashboard_screen.dart';
import 'Components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))Expanded(
                child: SideMenu()),
            Expanded(
                flex: 5,
                child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}


