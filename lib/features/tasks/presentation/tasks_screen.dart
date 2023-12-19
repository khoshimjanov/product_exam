import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/assets/constants/icons.dart';
import 'package:tasks/features/tasks/presentation/pages/all.dart';
import 'package:tasks/features/tasks/presentation/pages/notes_screen.dart';
import 'package:tasks/features/tasks/presentation/pages/upcoming.dart';
import '../../../assets/constants/colors.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 244,
                  height: 72,
                  color: scaffoldBackgroundColor,
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
                                      fontSize: 20,
                                      fontFamily: "Barlow",
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "hozar.rasan.matar115@gmail.com",
                                  style: TextStyle(
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
        appBar: AppBar(
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
                        onTap:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (
                                context) => const Notes()),
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
        body: TabBarView(
          controller: tabController,
          children: const [
            UpcomingPage(),
            AllPage(),
          ],
        ),
      ),
    );
  }
}