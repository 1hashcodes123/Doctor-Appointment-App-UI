import 'package:doctor_apppointment_ui/globals/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrModel {
  static final List drNames = [
    "Dr Lonney",
    "Dr Angela",
    "Dr Robert",
    "Dr Alex",
  ];
  static final List drExpertise = [
    "Heart Surgeon",
    "Dentist",
    "Eye Specialist",
    "Brain Surgeon",
  ];
  static final List drRating = [
    "5.0",
    "4.9",
    "5.0",
    "4.5",
  ];
  static final List catIcons = [
    Icon(MdiIcons.toothOutline, color: pColor, size: 30),
    Icon(MdiIcons.heartPlus, color: pColor, size: 30),
    Icon(MdiIcons.eye, color: pColor, size: 30),
    Icon(MdiIcons.brain, color: pColor, size: 30),
    Icon(MdiIcons.earHearing, color: pColor, size: 30)
  ];
  static final List drImages = [
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
  ];
  static final List patients = ["1.8k", "2K", "5K", "2.3K"];
  static final List experience = [
    "4 Years",
    "5 Years",
    "10+ Years",
    "20+ Years"
  ];
  static final List drIcons = [
    MdiIcons.heartPlus,
    MdiIcons.toothOutline,
    MdiIcons.eye,
    MdiIcons.brain,
  ];
}
