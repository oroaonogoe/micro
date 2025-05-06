import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro/theme/app_theme.dart';

class ResendVerificationScreenMobile extends StatelessWidget {
  const ResendVerificationScreenMobile({super.key});

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
                    onPressed: () => context.go('/'),
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
                      Icons.close,
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "We've sent a verification link to your email address",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Color(0xff0f52ba),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Please click the verification link in your inbox",
            style: GoogleFonts.poppins(color: Color(0xff0f52ba), fontSize: 14),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 3),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () => context.go('/'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Color(0xff0f52ba),
                side: BorderSide(width: 3, color: Color(0xff0f52ba)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                "Resend verification link",
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
