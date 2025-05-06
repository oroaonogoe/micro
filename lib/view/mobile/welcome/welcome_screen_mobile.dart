import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro/theme/app_theme.dart';

class WelcomeScreenMobile extends StatefulWidget {
  const WelcomeScreenMobile({super.key});

  @override
  State<WelcomeScreenMobile> createState() => _WelcomeScreenMobileState();
}

class _WelcomeScreenMobileState extends State<WelcomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 3),
            Image(
              image: AssetImage("assets/images/NiLarAsclepiusStroke.png"),
              width: width / 1.5,
              height: height / 3.5,
            ),
            Text(
              "Your life health care",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0xff0f52ba),
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(flex: 3),

            Text(
              "Sign up or log in to continue",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0xff0f52ba),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),

            //Continue with email
            SizedBox(
              width: width / 1.3,
              height: 50,
              child: OutlinedButton(
                onPressed: () => context.go('/signup'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 12.0,
                  ),
                  side: BorderSide(
                    style: BorderStyle.solid,
                    width: 3,
                    color: blueSapphire,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email_outlined, size: 23),
                    Spacer(flex: 1),
                    Text(
                      "Continue with email",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),

            //OAuth
            SizedBox(
              width: width / 1.3,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 12.0,
                  ),
                  side: BorderSide(
                    style: BorderStyle.solid,
                    width: 3,
                    color: blueSapphire,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 18,
                      width: 18,
                    ),
                    Spacer(flex: 1),
                    Text(
                      "Continue with Google",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
