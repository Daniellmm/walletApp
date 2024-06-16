import 'package:flutter/material.dart';
import 'package:new_project/contants/colors.dart';
import 'package:new_project/pages/Auth%20pages/signin.dart';
import 'package:new_project/pages/splash/onboarding_modals/onboarding_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = OnboardingItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        // color: Colors.white,
        child: isLastPage
            ? getStarted()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () =>
                        //  Navigator.push(context,MaterialPageRoute(builder: (context) => const Loginpage())),
                        pageController.jumpToPage(controller.items.length - 1),
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Color.fromARGB(255, 98, 0, 255)),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.items.length,
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 30,
                        activeDotColor: Color.fromARGB(255, 98, 0, 255)),
                  ),
                  TextButton(
                    onPressed: () => pageController.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Color.fromARGB(255, 98, 0, 255)),
                    ),
                  ),
                ],
              ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
          onPageChanged: (index)=> setState(()=> isLastPage = controller.items.length-1 == index),
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(controller.items[index].image),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    controller.items[index].title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    controller.items[index].description,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            }),
      ),
    );
  }

  Widget getStarted() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 55,
      decoration:  BoxDecoration(color: Color.fromARGB(255, 98, 0, 255), 
      borderRadius: BorderRadius.circular(20)),
      child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Loginpage()));
          },
          child: Text(
            "Get started",
            style: TextStyle(color: white),
          )),
    );
  }
}
