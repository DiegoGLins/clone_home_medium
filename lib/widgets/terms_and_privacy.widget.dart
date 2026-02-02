import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "By signing up, you agree to our ",
        children: [
          TextSpan(
            text: "Terms of Service ",
            style: TextStyle(
              color: Color.fromARGB(255, 41, 122, 44),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 41, 122, 44),
              decorationThickness: 2.0,
            ),
          ),
          TextSpan(text: "and"),
          TextSpan(text: "acknowledge that our "),
          TextSpan(
            text: "Privacy Policy ",
            style: TextStyle(
              color: Color.fromARGB(255, 41, 122, 44),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(255, 41, 122, 44),
              decorationThickness: 2.0,
            ),
          ),
          TextSpan(text: "applies to you."),
        ],
      ),
    );
  }
}
