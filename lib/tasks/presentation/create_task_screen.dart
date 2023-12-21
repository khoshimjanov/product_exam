import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:tasks/assets/constants/colors.dart';
import 'package:tasks/features/home/home.dart';
import 'package:tasks/tasks/models/priority.dart';

import '../bloc/task_bloc.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  late TextEditingController titleController;
  late TextEditingController noteController;
  final random = Random();

  final list = [
    'assets/icons/gym.svg',
    'assets/icons/camera.svg',
    'assets/icons/books.svg',
  ];

  DateTime? startDate;
  DateTime? dueDate;
  Priority? priority;
  String? icon;
  @override
  void initState() {
    titleController = TextEditingController();
    noteController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Create task',
        ),
        backgroundColor: const Color.fromRGBO(19, 21, 36, 1),
      ),
      backgroundColor: const Color.fromRGBO(19, 21, 36, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (modalBottomSheetContext) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: List.generate(
                                3,
                                (index) => GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    setState(() {
                                      icon = list[index];
                                    });
                                    Navigator.of(modalBottomSheetContext).pop();
                                  },
                                  child: SvgPicture.asset(
                                    list[index],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(
                          random.nextInt(255),
                          random.nextInt(255),
                          random.nextInt(255),
                          1,
                        ),
                      ),
                      child: icon != null ? SvgPicture.asset(icon!) : null,
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: white),
                      controller: titleController,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      final day = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2024),
                      );

                      if (time != null && day != null) {
                        setState(() {
                          startDate = day.copyWith(
                            hour: time.hour,
                            minute: time.minute,
                          );
                        });
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Start',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${startDate?.hour}:${startDate?.minute}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );

                      final day = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2024),
                      );

                      if (time != null && day != null) {
                        setState(() {
                          dueDate = day.copyWith(
                            hour: time.hour,
                            minute: time.minute,
                          );
                        });
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'End',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '${dueDate?.hour}:${dueDate?.minute}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(10),
              const Text(
                'Priority',
                style: TextStyle(color: Colors.white),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  3,
                  (index) => GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        priority = getPriorityEnumValueByIndex(index);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                          color: getPriorityColorByIndex(index),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        getPriorityByIndex(index),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              TextField(
                style: const TextStyle(color: white),
                controller: noteController,
              ),
              const Spacer(),
              MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Colors.blue,
                onPressed: () {
                  if (icon == null) {
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        onVisible: () async {
                          await Future.delayed(const Duration(seconds: 3));
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        content: Text(
                          'Icon cannot be null',
                          style: TextStyle(color: black),
                        ),
                        actions: [SizedBox()],
                      ),
                    );
                    return;
                  }
                  if (startDate == null) {
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        onVisible: () async {
                          await Future.delayed(const Duration(seconds: 3));
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        content: const Text(
                          'Start date cannot be null',
                          style: TextStyle(color: black),
                        ),
                        actions: const [SizedBox()],
                      ),
                    );
                    return;
                  }
                  if (dueDate == null) {
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        onVisible: () async {
                          await Future.delayed(const Duration(seconds: 3));
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        content: const Text(
                          'Due date cannot be null',
                          style: TextStyle(color: black),
                        ),
                        actions: [SizedBox()],
                      ),
                    );
                    return;
                  }
                  if (priority == null) {
                    ScaffoldMessenger.of(context).showMaterialBanner(
                      MaterialBanner(
                        onVisible: () async {
                          await Future.delayed(const Duration(seconds: 3));
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        content: Text(
                          'Priority date cannot be null',
                          style: TextStyle(color: black),
                        ),
                        actions: [SizedBox()],
                      ),
                    );
                    return;
                  }

                  context.read<TaskBloc>().add(
                        CreateTaskButtonPressed(
                          icon: icon!,
                          title: titleController.text,
                          startDate: startDate!,
                          dueDate: dueDate!,
                          note: noteController.text,
                          priority: priority!,
                          onSuccess: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          onFailure: (errorMessage) {
                            ScaffoldMessenger.of(context).showMaterialBanner(
                              MaterialBanner(
                                onVisible: () async {
                                  await Future.delayed(
                                      const Duration(seconds: 3));
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentMaterialBanner();
                                },
                                content: Text(
                                  errorMessage,
                                  style: TextStyle(color: Colors.white),
                                ),
                                actions: const [
                                  SizedBox(),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                },
                child: const Text(
                  'Create task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    noteController.dispose();
    super.dispose();
  }

  String getPriorityByIndex(int index) {
    switch (index) {
      case 0:
        return 'High';
      case 1:
        return 'Medium';
      case 2:
        return 'Low';
      default:
        return '';
    }
  }

  Priority getPriorityEnumValueByIndex(int index) {
    switch (index) {
      case 0:
        return Priority.high;
      case 1:
        return Priority.medium;
      case 2:
        return Priority.low;
      default:
        return Priority.low;
    }
  }

  Color getPriorityColorByIndex(int index) {
    switch (index) {
      case 0:
        return const Color(0xFFFF2752);
      case 1:
        return const Color(0xFFF6A845);
      case 2:
        return const Color(0xFF44DB4A);
      default:
        return Colors.white;
    }
  }
}
