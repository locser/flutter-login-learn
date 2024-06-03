import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Email or Number Phone',
          style: TextStyle(color: Colors.black54),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              // hintText: 'Email',
              prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset("assets/icons/email.svg")),
            ),
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Text(
          'Password',
          style: TextStyle(color: Colors.black54),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: TextFormField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              // hintText: 'Email',
              prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SvgPicture.asset("assets/icons/password.svg")),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: ElevatedButton.icon(
            onPressed: () {},
            label: Text("Sign In"),
            icon: Icon(Icons.login),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent.shade100,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
          ),
        ),
      ])),
    ]);
  }
}
