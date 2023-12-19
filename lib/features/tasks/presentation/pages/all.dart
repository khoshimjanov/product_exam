import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:tasks/assets/constants/colors.dart';
import 'package:tasks/assets/constants/icons.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 12),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ink1,
                  ),
                  child: SvgPicture.asset(AppIcons.work1),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create navigation bar',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      '10:00 AM - 11:30 AM',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const Gap(7),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 18,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 2,
                      color: activeColor,
                    ),
                  ),
                ),
              ]),
              Text(
                'I will design a navigation bar for the application I am working on, and choose it with suitable colors ',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ],
          )),
      const SizedBox(height: 16),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          right: 8,
          left: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: textFieldBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: pink,
                  ),
                  child: SvgPicture.asset(AppIcons.books),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'English Study',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      '12:00 PM - 01:30 PM',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const Gap(7),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 18,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 2,
                      color: activeColor,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Review of the acoustics course lessons',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
      const SizedBox(height: 16),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ink,
                  ),
                  child: SvgPicture.asset(AppIcons.task2),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cleaning my room',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      '08:00 AM - 08:30 AM',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const Gap(7),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 18,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 2,
                      color: activeColor,
                    ),
                  ),
                ),
              ]),
              Text(
                'I will sort the books, redecorate the room',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ],
          )),
      const SizedBox(height: 16),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: SvgPicture.asset(AppIcons.gym),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gym time',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    '03:00 PM - 04:30 PM',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 18,
                width: 17,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 2,
                    color: activeColor,
                  ),
                ),
              ),
            ],
          )),
      const SizedBox(
        height: 16,
      ),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: SvgPicture.asset(AppIcons.meet),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meet the cdevs team',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      '05:00 PM - 05:30 PM',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    const Gap(10),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 18,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      width: 2,
                      color: activeColor,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'We will discuss the new Tasks of the calendar pages',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const Gap(13),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(topLeft: Radius.circular(4)),
                    color: darkBlue,
                  ),
                  padding: EdgeInsets.all(8),
                  child: SvgPicture.asset(AppIcons.link),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(4)),
                    color: ligtBlue,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Link to meeting',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ])),
      SizedBox(
        height: 16,
      ),
      Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
            right: 8,
            left: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: textFieldBackgroundColor,
          ),
          child: Row(children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: pink,
              ),
              child: SvgPicture.asset(AppIcons.books),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Study for the constitutional\njudiciary test',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  '06:00 PM - 08:30 PM',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                )
              ],
            ),
            const Spacer(),
            Container(
              height: 18,
              width: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 2,
                  color: activeColor,
                ),
              ),
            ),
          ])),
    ]);
  }
}
