import 'package:flutter/material.dart';
import 'package:tasks/assets/constants/routes.dart';

import 'tasks/presentation/tasks_screen.dart';

/* 

 TODO 1: CreateTaskScreen uchun navigatsiya yaratish -> Done
 TODO 2: CreateTaskScreen uchun UI chiziladi -> Done
 TODO 3: CreateTask logikasi uchun Blocda event va funksiya yozish -> Done
 TODO 4: Yangi yaratilgan taskni saqlab qo'yish  -> Done
 TODO 5: Search funksiyasini ishlatish (Advanced Event Transformation bilan) -> Done

*/

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color.fromRGBO(19, 21, 36, 1),
      // home: App(),

      onGenerateRoute: RouteGenerator.onGenerateRoute,
    );
  }
}
