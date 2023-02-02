import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Models/RecentFile.dart';
import '../../../constants.dart';

class RecentFiles  extends StatelessWidget {
  const RecentFiles ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius:
          const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(label: Text("File Name")),
                DataColumn(label: Text("Date")),
                DataColumn(label: Text("Size")),
              ],
              rows: List.generate(
                  demoRecentFiles.length,
                      (index) => recentFileDataRow(
                      demoRecentFiles[index])),
            ),
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileinfo) {
  return DataRow(cells: [
    DataCell(Row(
      children: [
        SvgPicture.asset(
          fileinfo.icon!,
          width: 30,
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(fileinfo.title!),
        )
      ],
    )),
    DataCell(Text(fileinfo.date!)),
    DataCell(Text(fileinfo.size!)),
  ]);
}

