import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micro/theme/app_theme.dart';
import 'package:micro/widgets/focus_border_container.dart';

class LoginScreenMobile extends StatefulWidget {
  const LoginScreenMobile({super.key});

  @override
  State<LoginScreenMobile> createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {
  void _showBottomSheet(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        // labelStyle: Theme.of(context).textTheme.bodySmall,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 5),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
                          backgroundColor: Colors.greenAccent,
                          content: Text(
                            'Done! Check your email for the password reset link.',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xff0f52ba),
                      side: BorderSide(width: 3, color: Color(0xff0f52ba)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      "RESET PASSWORD",
                      style: GoogleFonts.poppins(
                        color: Color(0xff0f52ba),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
                Spacer(flex: 1),
                SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () => context.go('/home'),
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
                      "Log in with password",
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
            Icon(Icons.mail_outline, size: 100, color: blueSapphire),
            SizedBox(height: 15),
            Text(
              "Log in with your email",
              style: GoogleFonts.poppins(
                color: Color(0xff0f52ba),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "some text with shared preference",
              style: TextStyle(fontSize: 16, color: blueSapphire),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: FocusBorderContainer(
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
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      // labelStyle: Theme.of(context).textTheme.bodySmall,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () => _showBottomSheet(context),
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                overlayColor: Colors.transparent,
              ),
              child: const Text(
                'I forgot my password',
                style: TextStyle(fontSize: 16, color: blueSapphire),
              ),
            ),
            SizedBox(height: 15),
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
                  "Send me a login link",
                  style: GoogleFonts.poppins(
                    color: Color(0xff0f52ba),
                    fontSize: 18,
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
