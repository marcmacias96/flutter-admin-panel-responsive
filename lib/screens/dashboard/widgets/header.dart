import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../controllers/MenuController.dart';
import 'profile_card.dart';
import '../../../responsive.dart';
import 'search_field.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
        IconButton(
          onPressed: context.read<MenuController>().controlMenu,
          icon: Icon(Icons.menu)
        ),
        if(!Responsive.isMobile(context))
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.headline6,
          ),
        if(!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1,),
        Expanded(
            child: SearchField()
        ),
        ProfileCard()
      ],
    );
  }
}
