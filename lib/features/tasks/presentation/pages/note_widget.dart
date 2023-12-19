import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:tasks/assets/constants/icons.dart';
import '../../../../assets/constants/colors.dart';

import 'notes_screen.dart';

class NoteDismiss extends StatelessWidget {
  NoteDismiss({
    Key? key,
    required this.title,
    required this.underTitle,
    required this.data,
    required this.image,
    required this.voice,
  }) : super(key: key);
  String title;
  String underTitle;
  String data;
  String image;
  String voice;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(
          onDismissed: () {},
        ),
        children: [
          SlidableAction(
              onPressed: (context) {},
              backgroundColor: scaffoldBackgroundColor,
              foregroundColor: Colors.red,
              icon: Icons.delete,
              label: 'Delete')
        ],
      ),
      child: Container(
        margin: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          right: 0,
          left: 0,
        ),
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          right: 16,
          left: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: textFieldBackgroundColor,
        ),
        child: Column(children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Gap(4),
                  Text(
                    underTitle,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Gap(4),
                  Row(
                    children: [
                      Text(
                        data,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      voice.isEmpty
                          ? SizedBox()
                          : SvgPicture.asset(AppIcons.voice),
                    ],
                  ),
                ],
              ),
              image.isEmpty ? SizedBox() : Image.asset(image),
            ],
          ),
        ]),
      ),
    );
  }
}
