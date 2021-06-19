import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'widgets/header.dart';
import 'widgets/my_files.dart';
import 'widgets/recent_files.dart';
import 'widgets/storage_details.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding,),
                     RecentFiles(),
                      if(Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if(Responsive.isMobile(context))
                        StorageDetails(),
                    ],
                  )
                ),
                if(!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if(!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  )
              ],
            )
          ],
        ),
      )
    );
  }


}


