// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:gap/gap.dart';
// import 'package:pinput/pinput.dart';
// import 'package:tasks/assets/constants/icons.dart';
// import 'package:tasks/features/tasks/presentation/pages/note_widget.dart';
// import 'package:tasks/features/tasks/presentation/pages/notes_model.dart';
// import '../../../../assets/constants/colors.dart';

// class NotesScreen extends StatefulWidget {
//   const NotesScreen({super.key});

//   @override
//   State<NotesScreen> createState() => _NotesScreenState();
// }

// class _NotesScreenState extends State<NotesScreen> {
//   PinTheme defaultPinTheme = PinTheme(
//     width: 51,
//     height: 55,
//     textStyle: const TextStyle(
//       fontSize: 24,
//       fontWeight: FontWeight.w600,
//     ),
//     decoration: BoxDecoration(
//       color: textFieldBackgroundColor2,
//       border: Border.all(
//         color: Colors.blueAccent.withOpacity(0.1),
//       ),
//       borderRadius: BorderRadius.circular(8),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     List<NotesModel> containers = [
//       NotesModel(
//           title: 'Commitment resource lecture',
//           underTitle: 'We explained the definition of commitment and it..',
//           data: '15 November',
//           image: '',
//           voice: ''),
//       NotesModel(
//           title: 'Duas',
//           underTitle: 'Allahuma aeni ealaa dikrika wa shukrika wa husn e..',
//           data: '15 November',
//           image: '',
//           voice: ''),
//       NotesModel(
//           title: 'Commitment resource lecture',
//           underTitle: 'We explained the definition of commitmen..',
//           data: '15 November',
//           image: AppIcons.duass,
//           voice: AppIcons.voice),
//       NotesModel(
//           title: 'Commitment resource lecture',
//           underTitle: 'We explained the definition of commitment and it..',
//           data: '15 November',
//           image: '',
//           voice: ''),
//       NotesModel(
//           title: 'Commitment resource lecture',
//           underTitle: 'We explained the definition of commitment and it..',
//           data: '15 November',
//           image: '',
//           voice: ''),
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         title: const Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Row(children: [
//               Spacer(),
//               Text('Notes',
//                   style: TextStyle(
//                     color: white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w700,
//                   )),
//               SizedBox(width: 145),
//             ]),
//           ],
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//               padding: const EdgeInsets.only(right: 16.0, left: 16.0),
//               child: Column(
//                 children: [
//                   const Gap(16),
//                   const Row(
//                     children: [
//                       Text(
//                         'Books',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Gap(16),
//                   Row(
//                     children: [
//                       Column(
//                         children: [
//                           Image.asset(
//                             AppIcons.passwords,
//                             height: 91,
//                             width: 71.035,
//                           ),
//                           const Gap(8),
//                           const Text('Passwords',
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: white,
//                                   fontWeight: FontWeight.w500)),
//                         ],
//                       ),
//                       const SizedBox(width: 68),
//                       Column(
//                         children: [
//                           Image.asset(
//                             AppIcons.memories,
//                             height: 91,
//                             width: 71.035,
//                           ),
//                           const Gap(8),
//                           const Text('Memories',
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: white,
//                                   fontWeight: FontWeight.w500)),
//                         ],
//                       ),
//                       const SizedBox(width: 68),
//                       Column(
//                         children: [
//                           Image.asset(
//                             AppIcons.plusBook,
//                             height: 91,
//                             width: 71.035,
//                           ),
//                           const Gap(8),
//                           const Text('',
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: white,
//                                   fontWeight: FontWeight.w500)),
//                         ],
//                       ),
//                       const SizedBox(height: 25),
//                     ],
//                   ),
//                   const Gap(25),
//                   Row(
//                     children: [
//                       const Text(
//                         'Quick Notes',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       const Spacer(),
//                       SvgPicture.asset(AppIcons.add),
//                     ],
//                   ),
//                   ListView.separated(
//                     shrinkWrap: true,
//                     itemCount: containers.length,
//                     itemBuilder: (context, index) => NoteDismiss(
//                       title: containers[index].title,
//                       underTitle: containers[index].underTitle,
//                       data: containers[index].data,
//                       image: containers[index].image,
//                       voice: containers[index].voice,
//                     ),
//                     separatorBuilder: (BuildContext context, int index) {
//                       return Container();
//                     },
//                   ),
//                 ],
//               )),
//         ],
//       ),
//     );
//   }
// }

// void doNothing(BuildContext context) {}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gap/gap.dart';
import 'package:tasks/assets/constants/colors.dart';
import 'package:tasks/assets/constants/icons.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        foregroundColor: white,
        elevation: 0,
        backgroundColor: appBarColor,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 16, top: 16),
          child: Text(
            'Notes',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: inactiveColor),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            //
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Books",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: notesTxtColor),
                  )
                ],
              ),
              const Gap(16),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppIcons.book1),
                        const Gap(8),
                        Text(
                          "Passwords",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: notesTxtColor),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppIcons.book2),
                        const Gap(8),
                        Text(
                          "Memories",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: notesTxtColor),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(AppIcons.book3),
                        const Gap(8),
                        Text(
                          "Add New",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: notesTxtColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quick Notes",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: notesTxtColor),
                  ),
                  SvgPicture.asset(AppIcons.add)
                ],
              ),
              const Gap(17),
              Dismissible(
                key: Key('1'),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {},
                background: Container(
                  alignment: Alignment.centerRight,
                  // color: Colors.red,
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.delete,
                    color: red,
                  ),
                ),
                child: Container(
                  width: double.maxFinite,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF2B304A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Commitment resource lecture",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: white),
                      ),
                      const Gap(4),
                      Text(
                        "We explained the definition of commitment and it..",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: notesTxtColor),
                      ),
                      const Gap(8),
                      const Text(
                        "15 November",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: inactiveColor),
                      )
                    ],
                  ),
                ),
              ),
              const Gap(12),
              Dismissible(
                key: Key('2'),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {},
                background: Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: red,
                  ),
                ),
                child: Container(
                  width: double.maxFinite,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF2B304A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Duas',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: inactiveColor),
                      ),
                      const Gap(4),
                      Text(
                        'Allahuma aeni ealaa dikrika wa shukrika wa husn e..',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: notesTxtColor),
                      ),
                      const Gap(8),
                      const Text(
                        '15 November',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: inactiveColor),
                      ),
                      const Gap(8),
                    ],
                  ),
                ),
              ),
              const Gap(12),
              Dismissible(
                key: Key('3'),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {},
                background: Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: red,
                  ),
                ),
                child: Container(
                  width: double.maxFinite,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF2B304A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Commitment resource lecture',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: inactiveColor),
                      ),
                      const Gap(4),
                      Row(
                        children: [
                          Text(
                            'We explained the definition of commitmen..',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: notesTxtColor),
                          ),
                          // SvgPicture.asset(AppIcons.arab),
                          const Gap(8),
                        ],
                      ),
                      const Gap(8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '15 November',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: inactiveColor),
                          ),
                          const Gap(10),
                          SvgPicture.asset(AppIcons.ovoz,
                              width: 24, height: 24),
                          const Gap(4),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(12),
              Dismissible(
                key: Key('4'),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {},
                background: Container(
                  padding: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: red,
                  ),
                ),
                child: Container(
                  width: double.maxFinite,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF2B304A),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Commitment resource lecture',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: inactiveColor),
                      ),
                      const Gap(4),
                      Row(
                        children: [
                          Text(
                            'We explained the definition of commitment',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: notesTxtColor),
                          ),
                          const Gap(8),
                        ],
                      ),
                      const Gap(8),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '15 November',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: inactiveColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Gap(12),

              // Container(
              //   width: double.maxFinite,
              //   padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8),
              //     color: const Color(0xFF2B304A),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //        const Text('Commitment resource lecture',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: inactiveColor),),
              //        const Gap(4),
              //       Text('We explained the definition of commitment and it..',style: TextStyle(fontSize:14,fontWeight: FontWeight.w500,color:notesTxtColor ),),
              //       const Gap(8),
              //       const Text('15 November',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: inactiveColor),),
              //     ],
              //   ),
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
