import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_2/screens/onboarding/components/custom_sign_in_dialog.dart';
import 'package:rive/rive.dart';

import 'components/animated_btn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    super.initState();

    _btnAnimationController = OneShotAnimation('active', autoplay: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // show rive animation
        RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
        // add blur
        Positioned.fill(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: SizedBox(),
        )),

        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Spacer(),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Text(
                      "Welcome to Aloline",
                      style: TextStyle(
                          fontSize: 60, fontFamily: "Poppins", height: 1.2),
                    ),
                    const SizedBox(height: 16),
                    Text(
                        "ALOLINE là ứng dụng thuộc hệ thống phần mềm Quản lý nhà hàng TECHRES , là kênh giao tiếp giữa thực khách với các nhà hàng sử dụng phần mềm TECHRES.",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Arial",
                          height: 1,
                        )),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              AnimatedBtn(
                btnAnimationController: _btnAnimationController,
                press: () {
                  _btnAnimationController.isActive = true;

                  // wait animation to finish then show dialog
                  Future.delayed(Duration(milliseconds: 800), () {
                    customSignInMethod(context);
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                    'Use Stack to arrange widgets on top of a base widget—often an image. The widgets can completely or partially overlap the base widget.'),
              )
            ],
          ),
        ))
      ],
    ));
  }
}
