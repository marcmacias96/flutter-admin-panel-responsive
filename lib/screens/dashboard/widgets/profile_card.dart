import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../responsive.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultPadding / 2
      ),
      margin: EdgeInsets.only(
          left: defaultPadding
      ),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),
          border: Border.all(
              color: Colors.white10
          )
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          if(!Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2
              ),
              child: Text('Jess Alexa'),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
