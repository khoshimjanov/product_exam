import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:tasks/assets/constants/colors.dart';
import 'package:tasks/assets/constants/icons.dart';

import 'package:tasks/features/tasks/presentation/pages/notes_screen.dart';
import 'package:tasks/tasks/models/loading_status.dart';
import 'package:tasks/tasks/models/priority.dart';
import 'package:tasks/tasks/models/task.dart';
import 'package:tasks/tasks/repository/tasks.dart';

import '../bloc/task_bloc.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
    Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(19, 21, 36, 1),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          toolbarHeight: 116,
          title: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset(AppIcons.hamburger),
                      );
                    }),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notes()),
                          );
                        },
                        child: SvgPicture.asset(AppIcons.note)),
                    const SizedBox(width: 24),
                    SvgPicture.asset(AppIcons.notification),
                  ],
                ),
                const SizedBox(height: 16),
                TextField(
                  cursorColor: cursorColor,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 44, vertical: 13.5),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        AppIcons.search,
                      ),
                    ),
                    suffixIcon: Container(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(AppIcons.filter),
                    ),
                    filled: true,
                    fillColor: textFieldBackgroundColor,
                    hintText: 'Search by events, tasks.. ',
                  ),
                ),
              ],
            ),
          ),
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(child: Text("Upcoming")),
              Tab(child: Text("All")),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SafeArea(
                  child: Container(
                    // width: 244,
                    // height: 72,
                    // color: scaffoldBackgroundColor,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [SvgPicture.asset(AppIcons.sun)],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              AppIcons.profilePicture,
                              height: 48,
                              width: 48,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rozan",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 20,
                                        // fontFamily: "Barlow",
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "hozar.rasan.matar115@gmail.com",
                                    style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w400,
                                    ),
                                    softWrap: false,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.star,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Premium",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontFamily: "Barlow",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 22.5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SvgPicture.asset(
                              AppIcons.settings,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Settings",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontFamily: "Barlow",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                            child: SvgPicture.asset(
                              AppIcons.articles,
                              width: 16,
                              height: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Articles",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontFamily: "Barlow",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.5,
                      ),
                      const Divider(
                        height: 0.5,
                      ),
                      const SizedBox(
                        height: 18.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.help,
                              width: 24,
                              height: 24,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Text(
                              "Help",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontFamily: "Barlow",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SvgPicture.asset(
                              AppIcons.terms,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Terms",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontFamily: "Barlow",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: SvgPicture.asset(
                              AppIcons.faq,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "FAQ",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontFamily: "Barlow",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(19, 21, 36, 1),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       CupertinoPageRoute(
        //         builder: (_) => BlocProvider.value(
        //           value: context.read<TaskBloc>(),
        //           child: const CreateTaskScreen(),
        //         ),
        //       ),
        //     );
        //   },
        //   child: const Icon(Icons.add),
        // ),
        // appBar: AppBar(
        //   backgroundColor:const Color.fromRGBO(19, 21, 36, 1),
        //   title: TextField(
        //     onChanged: (value) {
        //       context.read<TaskBloc>().add(SearchTask(query: value));
        //     },
        //   ),
        //   bottom: TabBar(
        //     controller: tabController,
        //     tabs: const [
        //       Tab(text: 'Upcoming'),
        //       Tab(text: 'All'),
        //     ],
        //   ),
        // ),
        body: BlocBuilder<TaskBloc, TaskState>(
          builder: (context, state) {
            switch (state.status) {
              case LoadingStatus.pure:
                context.read<TaskBloc>().add(LoadTasks());
                return const SizedBox();
              case LoadingStatus.loading:
                return const Center(child: CupertinoActivityIndicator());
              case LoadingStatus.loadedWithSuccess:
                return state.isSearching
                    ? ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        itemBuilder: (_, index) =>
                            TaskItem(task: state.searchedTasks[index]),
                        separatorBuilder: (_, __) => const Gap(16),
                        itemCount: state.searchedTasks.length,
                      )
                    : TabBarView(
                        controller: tabController,
                        children: [
                          ListView.separated(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 16,
                            ),
                            itemBuilder: (_, index) =>
                                TaskItem(task: state.upcomingTasks[index]),
                            separatorBuilder: (_, __) => const Gap(16),
                            itemCount: state.upcomingTasks.length,
                          ),
                          ListView.separated(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 16,
                            ),
                            itemBuilder: (_, index) =>
                                TaskItem(task: state.allTasks[index]),
                            separatorBuilder: (_, __) => const Gap(16),
                            itemCount: state.allTasks.length,
                          )
                        ],
                      );
              case LoadingStatus.loadedWithFailure:
                return const SizedBox();
              default:
                return const SizedBox();
            }
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}

class TaskItem extends StatelessWidget {
  final TaskModel task;
  const TaskItem({
    required this.task,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF272C38),
          border: Border(
            right: BorderSide(
              width: 10,
              style: BorderStyle.solid,
              color: getProperColor(task.priority),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: task.iconColor,
                  ),
                  child: SvgPicture.asset(
                    task.icon,
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        task.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          decoration: task.isChecked
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      const Gap(2),
                      Text(
                        '${getProperTime(task.startDate)} - ${getProperTime(task.dueDate)}',
                        style: TextStyle(
                          color: const Color(0xFFABABAB),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          decoration: task.isChecked
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                Checkbox(
                  value: task.isChecked,
                  onChanged: (value) {
                    context.read<TaskBloc>().add(ToggleTaskCheckedValue(
                          id: task.id,
                        ));
                  },
                  // checkColor: const Color(0xFF4B7FD6),
                  checkColor: white,
                  activeColor: const Color(0xFF4B7FD6),
                )
              ],
            ),
            if (task.note != null) ...{
              const Gap(8),
              Text(
                task.note!,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  decoration: task.isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              )
            }
          ],
        ),
      ),
    );
  }

  String getProperTime(DateTime date) {
    final hour = date.hour < 10 ? '0${date.hour}' : '${date.hour}';
    final minute = date.minute < 10 ? '0${date.minute}' : '${date.minute}';
    return '$hour:$minute';
  }

  Color getProperColor(Priority priority) {
    switch (priority) {
      case Priority.high:
        return const Color(0xFFFF2752);
      case Priority.medium:
        return const Color(0xFFF6A845);
      case Priority.low:
        return const Color(0xFF44DB4A);
      default:
        return Colors.white;
    }
  }
}

// enum NavItemEnum { tasks, expenses, create, calendar, stats }

// class HomeScreen extends StatefulWidget {
//   static Route route() =>
//       MaterialPageRoute<void>(builder: (_) => const HomeScreen());

//   const HomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
//   late TabController _controller;
//   late double navBarWidth;

//   late AnimationController controller;
//   final Map<NavItemEnum, GlobalKey<NavigatorState>> _navigatorKeys = {
//     NavItemEnum.tasks: GlobalKey<NavigatorState>(),
//     NavItemEnum.expenses: GlobalKey<NavigatorState>(),
//     NavItemEnum.create: GlobalKey<NavigatorState>(),
//     NavItemEnum.calendar: GlobalKey<NavigatorState>(),
//     NavItemEnum.stats: GlobalKey<NavigatorState>(),
//   };

//   List<NavBar> labels = [];

//   int _currentIndex = 0;
//   int currentPage = 0;

//   @override
//   void initState() {
//     controller = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 200));

//     _controller = TabController(length: 5, vsync: this);
//     controller.addListener(() {});
//     _controller.addListener(onTabChange);
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarBrightness: Brightness.dark,
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ));
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   void onTabChange() {
//     setState(() => _currentIndex = _controller.index);
//   }

//   Widget _buildPageNavigator(NavItemEnum tabItem) => TabNavigator(
//         navigatorKey: _navigatorKeys[tabItem]!,
//         tabItem: tabItem,
//       );

//   void changePage(int index) {
//     setState(() => _currentIndex = index);
//     _controller.animateTo(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     labels = const [
//       NavBar(id: 0, icon: AppIcons.tasks, title: "Tasks"),
//       NavBar(id: 1, icon: AppIcons.expense, title: "Expense"),
//       NavBar(id: 2, icon: AppIcons.create, title: "Create"),
//       NavBar(id: 3, icon: AppIcons.calendar, title: "Calendar"),
//       NavBar(id: 4, icon: AppIcons.stats, title: "Stats"),
//     ];

//     return AnnotatedRegion(
//       value: const SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarBrightness: Brightness.dark,
//         statusBarIconBrightness: Brightness.dark,
//         systemNavigationBarColor: white,
//       ),
//       child: HomeTabControllerProvider(
//         controller: _controller,
//         child: WillPopScope(
//           onWillPop: () async {
//             final isFirstRouteInCurrentTab =
//                 !await _navigatorKeys[NavItemEnum.values[_currentIndex]]!
//                     .currentState!
//                     .maybePop();
//             if (isFirstRouteInCurrentTab) {
//               if (NavItemEnum.values[_currentIndex] != NavItemEnum.tasks) {
//                 changePage(0);
//                 return false;
//               }
//             }
//             return isFirstRouteInCurrentTab;
//           },
//           child: Scaffold(
//             resizeToAvoidBottomInset: true,
//             bottomNavigationBar: Container(
//               height: 75 + MediaQuery.of(context).padding.bottom,
//               decoration: BoxDecoration(
//                 borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20)),
//                 color: navigationBarBackgroundColor,
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0xff1F211C).withOpacity(0.08),
//                     blurRadius: 30,
//                     offset: const Offset(0, -4),
//                   )
//                 ],
//               ),
//               child: TabBar(
//                 enableFeedback: true,
//                 onTap: (index) {},
//                 indicator: const BoxDecoration(),
//                 controller: _controller,
//                 labelPadding: EdgeInsets.zero,
//                 tabs: [
//                   TabItemWidget(
//                     onActiveTap: () {
//                       _navigatorKeys[NavItemEnum.values[_currentIndex]]
//                           ?.currentState
//                           ?.popUntil((route) => route.isFirst);
//                     },
//                     isActive: _currentIndex == 0,
//                     item: labels[0],
//                   ),
//                   TabItemWidget(
//                     onActiveTap: () {
//                       _navigatorKeys[NavItemEnum.values[_currentIndex]]
//                           ?.currentState
//                           ?.popUntil((route) => route.isFirst);
//                     },
//                     isActive: _currentIndex == 1,
//                     item: labels[1],
//                   ),
//                   TabItemWidget(
//                     onActiveTap: () {
//                       _navigatorKeys[NavItemEnum.values[_currentIndex]]
//                           ?.currentState
//                           ?.popUntil((route) => route.isFirst);
//                     },
//                     isActive: _currentIndex == 2,
//                     item: labels[2],
//                   ),
//                   TabItemWidget(
//                     onActiveTap: () {
//                       _navigatorKeys[NavItemEnum.values[_currentIndex]]
//                           ?.currentState
//                           ?.popUntil((route) => route.isFirst);
//                     },
//                     isActive: _currentIndex == 3,
//                     item: labels[3],
//                   ),
//                   TabItemWidget(
//                     onActiveTap: () {
//                       _navigatorKeys[NavItemEnum.values[_currentIndex]]
//                           ?.currentState
//                           ?.popUntil((route) => route.isFirst);
//                     },
//                     isActive: _currentIndex == 4,
//                     item: labels[4],
//                   ),
//                 ],
//               ),
//             ),
//             body: TabBarView(
//               controller: _controller,
//               physics: const NeverScrollableScrollPhysics(),
//               children: [
//                 _buildPageNavigator(NavItemEnum.tasks),
//                 _buildPageNavigator(NavItemEnum.expenses),
//                 _buildPageNavigator(NavItemEnum.create),
//                 _buildPageNavigator(NavItemEnum.calendar),
//                 _buildPageNavigator(NavItemEnum.stats),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeTabControllerProvider extends InheritedWidget {
//   const HomeTabControllerProvider({
//     required Widget child,
//     required this.controller,
//     Key? key,
//   }) : super(key: key, child: child);

//   final TabController controller;

//   @override
//   bool updateShouldNotify(HomeTabControllerProvider oldWidget) => false;

//   static HomeTabControllerProvider of(BuildContext context) =>
//       context.dependOnInheritedWidgetOfExactType<HomeTabControllerProvider>()!;
// }
