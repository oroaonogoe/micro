import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro/theme/app_theme.dart';
import 'package:micro/widgets/focus_border_container.dart';

class SignUpScreenMobile extends StatefulWidget {
  const SignUpScreenMobile({super.key});

  @override
  State<SignUpScreenMobile> createState() => _SignUpScreenMobileState();
}

class _SignUpScreenMobileState extends State<SignUpScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Row
            Row(
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
                      Icons.arrow_back,
                      size: 22,
                      color: Color(0xff0f52ba),
                    ),
                  ),
                ),
                Spacer(flex: 1),
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () => context.go('/verify'),
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
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                        color: Color(0xff0f52ba),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Icon(Icons.mail_outline,size: 100,color: blueSapphire,),
            SizedBox(height: 15),
            Text(
              "What's your email?",
              style: GoogleFonts.poppins(
                color: Color(0xff0f52ba),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "We'll check",
              style: GoogleFonts.poppins(
                color: Color(0xff0f52ba),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25),
            FocusBorderContainer(
              unfocusedDecoration: BoxDecoration(
                border: Border.all(
                  // Or any desired focus color
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : blueSapphire.withAlpha(50),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    // labelStyle: Theme.of(context).textTheme.bodySmall,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
