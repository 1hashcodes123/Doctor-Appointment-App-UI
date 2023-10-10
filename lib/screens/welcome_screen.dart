import 'package:doctor_apppointment_ui/globals/colors.dart';
import 'package:doctor_apppointment_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          pColor.withOpacity(0.8),
          pColor,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),
            ),
            const SizedBox(height: 50),
            const Text(
              "Doctors Online",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2,
                  color: wColor),
            ),
            const SizedBox(height: 10),
            const Text("Appoint Your Doctor",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: wColor)),
            const SizedBox(height: 60),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 40,
                  ),
                  child: const Text(
                    "Let's GO",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: pColor),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Image.asset("images/lined heart.png", color: wColor, scale: 2)
          ],
        ),
      ),
    );
  }
}
