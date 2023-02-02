import 'package:dashboard/responsive.dart';
import 'package:flutter/material.dart';

import '../../../Models/MyFiles.dart';
import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding)),

              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add New"),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          tablet: FileInfoCardGridView(),
          mobile: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,),)
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: demoMyFiles.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index) => FileInfoCard(
              info: demoMyFiles[index],
            ));
  }
}

