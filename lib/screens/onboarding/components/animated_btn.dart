import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimatedBtn extends StatelessWidget {
  const AnimatedBtn({
    super.key,
    required RiveAnimationController btnAnimationController,
    required this.press,
  }) : _btnAnimationController = btnAnimationController;

  final RiveAnimationController _btnAnimationController;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // it shows the animation
        _btnAnimationController.isActive = true;
      },
      child: SizedBox(
          height: 64,
          width: 260,
          child: Stack(
            children: [
              RiveAnimation.asset(
                'assets/RiveAssets/button.riv',
                controllers: [_btnAnimationController],
              ),
              Positioned.fill(
                  top: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.explore,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Khám phá ngay',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
