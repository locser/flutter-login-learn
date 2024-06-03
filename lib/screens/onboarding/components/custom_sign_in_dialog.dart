import 'package:flutter/material.dart';
import 'package:flutter_2/screens/onboarding/components/sign_in_form.dart';
import 'package:flutter_svg/svg.dart';

Future<Object?> customSignInMethod(BuildContext context) {
  return showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: 'Sign In',
    context: context,
    transitionDuration: Duration(milliseconds: 500),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      Tween<Offset> tween;

      tween = Tween(begin: Offset(0, 1), end: Offset(0, 0));

      return SlideTransition(
          position: tween.animate(
            CurvedAnimation(parent: animation, curve: Curves.easeInOut),
          ),
          child: child);
    },
    pageBuilder: (context, _, __) => Center(
      child: Container(
        height: 620,
        margin: EdgeInsets.symmetric(horizontal: 16),
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.94),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset:
                false, // avoid overflow error when keyboard shows up
            body: Stack(clipBehavior: Clip.none, children: [
              Column(children: [
                Text(
                  "Đăng nhập",
                  style: TextStyle(
                      fontSize: 34,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text("Mạng xã hội ẩm thực của bạn",
                      style: TextStyle(fontSize: 16, fontFamily: 'Roboto')),
                ),
                SignInForm(),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Colors.black26),
                        )),
                    Expanded(child: Divider()),
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      'Sign in with Google, Facebook, Twitter',
                      style: TextStyle(color: Colors.black54),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/email.svg',
                            height: 52, width: 52)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/apple_box.svg',
                            height: 52, width: 52)),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/icons/google_box.svg',
                            height: 52, width: 52)),
                  ],
                )
              ]),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: -48,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ))
            ])),
      ),
    ),
  );
}
