import 'package:flutter/material.dart';

import 'drawer_list_title.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Image.asset(
                  'assets/images/logo.png'
              )
          ),
          DrawerListTitle(
            title: 'Dashboard',
            svgSrc: 'assets/icons/menu_dashbord.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Transaction',
            svgSrc: 'assets/icons/menu_tran.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Task',
            svgSrc: 'assets/icons/menu_task.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Documents',
            svgSrc: 'assets/icons/media_file.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Store',
            svgSrc: 'assets/icons/menu_store.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Notification',
            svgSrc: 'assets/icons/menu_notification.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Profile',
            svgSrc: 'assets/icons/menu_profile.svg',
            onTap: () {},
          ),
          DrawerListTitle(
            title: 'Settings',
            svgSrc: 'assets/icons/menu_setting.svg',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
