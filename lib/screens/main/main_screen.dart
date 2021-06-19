import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/controllers/MenuController.dart';
import 'package:flutter_admin_panel/screens/dashboard/dashboard_page.dart';
import 'package:provider/provider.dart';
import '../../responsive.dart';
import 'widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
              Expanded(child: SideMenu()),
            Expanded(flex: 5, child: DashboardPage())
          ],
        ),
      ),
    );
  }
}
