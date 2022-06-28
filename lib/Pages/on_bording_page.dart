import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Modules/content_module.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

//gffffffffffd
class onbordingPage extends StatelessWidget {
  onbordingPage({Key? key}) : super(key: key);
  PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            pageViewContent(_pageController, context),
            Indecators(_pageController),
            Button(context),
            skipButton(),
            Positioned(
              bottom: 25,
              child: Row(
                children: [
                  const Text("Don't Have an acount? "),
                  Text.rich(TextSpan(
                      style: TextStyle(color: Theme.of(context).primaryColor),
                      text: "SignUp")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Button(context) {
  return Positioned(
    bottom: 45,
    child: Container(
      width: 0.8 * MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: TextButton(
          onPressed: () {},
          //onPressed: () => {},
          child: const Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )),
    ),
  );
}

Widget Indecators(x) {
  return Positioned(
    bottom: 100,
    child: Container(
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: x,
        count: 3,
        //onDotClicked: (index) => x.animateToPage(index,
        // duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
      ),
    ),
  );
}

Widget pageViewContent(_pageController, context) {
  return PageView.builder(
    controller: _pageController,
    itemCount: content.length,
    itemBuilder: (_, i) {
      return Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: [
            SvgPicture.asset(content[i].image,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 0.45 * MediaQuery.of(context).size.height
                        : 0.25 * MediaQuery.of(context).size.height),
            Text(
              content[i].title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              content[i].description,
              style: const TextStyle(
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    },
  );
}

Widget skipButton() {
  return Positioned(
    top: 10,
    right: 10,
    child: Container(
      color: Colors.grey,
      child: TextButton(
          onPressed: () {},
          //onPressed: () => {},
          child: const Text(
            "Skip",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )),
    ),
  );
}
