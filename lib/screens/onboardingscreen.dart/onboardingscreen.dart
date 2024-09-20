import 'package:animate_do/animate_do.dart';
import 'package:coffee_app/constants/text_strins.dart';
import 'package:coffee_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                // Image
                Image(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                  image: const AssetImage('assets/images/6.png'),
                ),
                const SizedBox(height: 140),

                // Welcome Text
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    MyTextStrings.onboardingtext,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 173, 173, 173)),
                  ),
                ),
                const SizedBox(height: 20),

                // Get Started Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: FadeInUp(
                    duration: const Duration(milliseconds: 800),
                    child: Container(
                      // padding: const EdgeInsets.all(0),
                      height: 65,
                      width: 380,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(198, 124, 78, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                // const SizedBox(height: 40),
              ],
            ),
            // Text large
            // FadeInUp(
            //   duration: const Duration(seconds: 1),
            //   child: Positioned(
            //     // top: 0,
            //     bottom: 170,
            //     right: 0,
            //     left: 0,
            //     child: Text(
            //       textScaler: const TextScaler.linear(1.4),
            //       MyTextStrings.onboardingtext2,
            //       textAlign: TextAlign.center,
            //       style: const TextStyle(
            //           fontSize: 30,
            //           color: Colors.white,
            //           fontWeight: FontWeight.w600),
            //     ),
            //   ),
            // ),
            // Button Get Started
          ],
        ),
      ),
    );
  }
}
