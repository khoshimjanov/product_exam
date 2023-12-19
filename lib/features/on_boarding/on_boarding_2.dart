import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks/assets/constants/colors.dart';
import 'package:tasks/assets/constants/icons.dart';
import 'package:tasks/features/authenticiation/presentation/login_screen.dart';
import 'package:tasks/features/on_boarding/on_boarding_3.dart';
import 'package:tasks/features/on_boarding/on_boarding_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  int currentPage = 0;
  int count = 0;
  int countForLoginS = 0;
  get child => null;

  Future<void> nextPage() async {
    if (currentPage < 1) {
      await controller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  Future<void> previousPage() async {
    if (currentPage > 0) {
      await controller.previousPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  Future<void> goToLoginScreen() async {
    if (currentPage < 2) {
      await controller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 310, top: 69),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                });
              },
              child: const Text(
                "SKIP",
                style: TextStyle(
                    color: bluee, fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                Page_One(),
                Page_Two(),
                // Add additional onboarding pages as needed
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            if (count == 1)
              GestureDetector(
                onTap: () {
                  count = 0;
                  setState(() {});
                  previousPage();
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 24, bottom: 47),
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: bluee,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SvgPicture.asset(AppIcons.arrowLeft),
                    ),
                  ),
                ),
              ),
            SizedBox(width: 110),
            if (count == 0)
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 68, right: 0, bottom: 50),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 2, // Number of pages
                    effect: WormEffect(
                        activeDotColor: bluee, dotHeight: 10, dotWidth: 10),
                  ),
                ),
              ),
            if (count == 1)
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 2, // Number of pages
                    effect: WormEffect(
                        activeDotColor: bluee, dotHeight: 10, dotWidth: 10),
                  ),
                ),
              ),
            SizedBox(width: 110),
            GestureDetector(
              onTap: () {
                count++;
                if (count == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }
                nextPage();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 47),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: bluee,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
