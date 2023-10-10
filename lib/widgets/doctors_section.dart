import 'package:doctor_apppointment_ui/globals/colors.dart';
import 'package:doctor_apppointment_ui/data/dr_data.dart';
import 'package:doctor_apppointment_ui/screens/appoint_screen.dart';
import 'package:flutter/material.dart';

class DoctorsSection extends StatelessWidget {
  const DoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(children: <Widget>[
              Container(
                height: 300,
                width: 200,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xfff2f8ff),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AppointScreen(
                                  img: DrModel.drImages[index],
                                  experience: DrModel.experience[index],
                                  patients: DrModel.patients[index],
                                  rating: DrModel.drRating[index],
                                  names: DrModel.drNames[index],
                                  expertise: DrModel.drExpertise[index],
                                  icon: DrModel.drIcons[index],
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15),
                            ),
                            child: Image.asset("images/doctor${index + 1}.jpg",
                                height: 200, width: 200, fit: BoxFit.cover),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xfff2f8ff),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    color: Colors.grey.withOpacity(0.5),
                                  ),
                                ]),
                            child: const Icon(Icons.favorite_outline,
                                size: 28, color: pColor),
                          ),
                        ),
                      ]),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              DrModel.drNames[index],
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: pColor),
                            ),
                            Text(
                              DrModel.drExpertise[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: bColor.withOpacity(0.6),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(children: <Widget>[
                              const Icon(Icons.star, color: Colors.amber),
                              const SizedBox(width: 5),
                              Text(
                                DrModel.drRating[index],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: bColor.withOpacity(0.6),
                                ),
                              ),
                            ])
                          ],
                        ),
                      ),
                    ]),
              ),
            ]);
          }),
    );
  }
}
