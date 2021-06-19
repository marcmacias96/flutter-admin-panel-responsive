import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListTitle extends StatelessWidget {

  final String title, svgSrc;
  final VoidCallback onTap;

  const DrawerListTitle({
    Key? key, required this.title,
    required this.svgSrc,
    required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white54
        ),
      ),
    );
  }
}
