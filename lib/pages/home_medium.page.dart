import 'package:clone_home_medium/widgets/faceBook_button.widget.dart';
import 'package:clone_home_medium/widgets/social_button.widget.dart';
import 'package:clone_home_medium/widgets/terms_and_privacy.widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMediumPage extends StatelessWidget {
  const HomeMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 20),

              /// Logo + título
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    key: const ValueKey("imageMedium"),
                    "assets/images/medium.png",
                    width: 200,
                    height: 60,
                  ),
                  const SizedBox(height: 70),
                  Text(
                    key: ValueKey("textTitle"),
                    "Join Medium.",
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 42,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// Botões principais
              Column(
                children: const [
                  SocialButton(
                    key: ValueKey("signupGoogle"),
                    pathImage: "assets/images/google.png",
                    text: "Sign up with Google",
                  ),
                  SizedBox(height: 15),
                  SocialButton(
                    key: ValueKey("signupEmail"),
                    pathImage: "assets/images/email.png",
                    text: "Sign up with Email",
                  ),
                ],
              ),

              const SizedBox(height: 35),

              /// Divider + Facebook
              Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          key: ValueKey("dividerLeft"),
                          color: Color.fromARGB(255, 65, 64, 64),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or, sign up with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 65, 64, 64),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          key: ValueKey("dividerRight"),
                          color: Color.fromARGB(255, 65, 64, 64),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const FaceBookButton(
                    key: ValueKey("buttonFacebook"),
                    pathImage: "assets/images/facebook.png",
                  ),
                  const SizedBox(height: 28),
                  Text.rich(
                    const TextSpan(
                      text: "Already have an account? ",
                      children: [
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            color: Color.fromARGB(255, 41, 122, 44),
                          ),
                        ),
                      ],
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),

              const Spacer(),

              /// Termos
              const TermsAndPrivacy(),
            ],
          ),
        ),
      ),
    );
  }
}
