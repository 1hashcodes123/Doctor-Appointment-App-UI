import 'package:doctor_apppointment_ui/globals/colors.dart';
import 'package:flutter/material.dart';

class AppointScreen extends StatelessWidget {
  const AppointScreen(
      {super.key,
      required this.img,
      required this.experience,
      required this.patients,
      required this.rating,
      required this.names,
      required this.expertise,
      required this.icon});
  final String img;
  final String experience;
  final String patients;
  final String rating;
  final String names;
  final String expertise;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: const Color(0xffd9e4ee),
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            height: screenHeight / 2.1,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  pColor.withOpacity(0.9),
                  pColor.withOpacity(0),
                  pColor.withOpacity(0),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 45,
                                width: 45,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0xfff2f8ff),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      ),
                                    ]),
                                child: const Center(
                                  child: Icon(Icons.arrow_back,
                                      size: 28, color: pColor),
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: const Color(0xfff2f8ff),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: const Icon(Icons.favorite_outline,
                                  size: 28, color: pColor),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 80,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  "Patients",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: wColor,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  patients,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: wColor),
                                ),
                              ],
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Rating",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: wColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    rating,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: wColor),
                                  )
                                ]),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Experience",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: wColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    experience,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: wColor),
                                  ),
                                ]),
                          ]),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    names,
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: pColor),
                  ),
                  const SizedBox(height: 8),
                  Row(children: <Widget>[
                    Icon(icon, size: 28, color: Colors.red),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      expertise,
                      style: TextStyle(
                        fontSize: 17,
                        color: bColor.withOpacity(0.6),
                      ),
                    ),
                  ]),
                  const SizedBox(height: 15),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.justify),
                  const SizedBox(height: 15),
                  Text(
                    "Book Date",
                    style: TextStyle(
                      fontSize: 16,
                      color: bColor.withOpacity(0.6),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 70,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 25),
                              decoration: BoxDecoration(
                                  color: index == 1
                                      ? pColor
                                      : const Color(0xfff2f8ff),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4),
                                  ]),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "${index + 8}",
                                      style: TextStyle(
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                    Text(
                                      "DEC",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: index == 1
                                            ? wColor
                                            : bColor.withOpacity(0.6),
                                      ),
                                    ),
                                  ]),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Book Time",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: bColor.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            decoration: BoxDecoration(
                                color: index == 2
                                    ? pColor
                                    : const Color(0xfff2f8ff),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 4),
                                ]),
                            child: Center(
                              child: Text(
                                "${index + 8}: 00 AM",
                                style: TextStyle(
                                  color: index == 2
                                      ? wColor
                                      : bColor.withOpacity(0.6),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 20),
                  Material(
                    color: pColor,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: const Text(
                        "Book Appointment",
                        style: TextStyle(
                            fontSize: 20,
                            color: wColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
