import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro/theme/app_theme.dart';

class VerifyEmailScreenMobile extends StatelessWidget {
  const VerifyEmailScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //back button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () => context.go('/signup'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xff0f52ba),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 10.0,
                      ),
                      side: BorderSide(
                        style: BorderStyle.solid,
                        width: 3,
                        color: Color(0xff0f52ba),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 22,
                      color: Color(0xff0f52ba),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 3),
          // Image.asset('assets/images/google.png', width: 200, height: 200),
          Icon(Icons.mail_outline, size: 200, color: blueSapphire,),
          SizedBox(height: 15),
          Text(
            "Verify your email address to get started",
            style: GoogleFonts.poppins(
              color: Color(0xff0f52ba),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "This helps us mitigate fraud and keep your personal data safe",
            style: GoogleFonts.poppins(color: Color(0xff0f52ba), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 3),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () => context.go('/resend'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Color(0xff0f52ba),
                side: BorderSide(width: 3, color: Color(0xff0f52ba)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                "Send verification email",
                style: GoogleFonts.poppins(
                  color: Color(0xff0f52ba),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
