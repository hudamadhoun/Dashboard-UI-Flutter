import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/constants.dart';
import 'package:flutter_svg/svg.dart';

import '../../Models/RecentFile.dart';
import 'Components/chart.dart';
import 'Components/header.dart';
import 'Components/my_files.dart';
import 'Components/recent_files.dart';
import 'Components/storage_details.dart';
import 'Components/storage_info_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    RecentFiles(),
                  ],
                ),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(flex: 2, child: StorageDetails()),
            ],
          )
        ],
      ),
    );
  }


}
