import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeController extends ChangeNotifier {
  String currentTime = "12:00 AM";
  String currentDate = "01/01/2023";
  String currentDay = "01";
  String currentWeekDay = "Lun";

  late Timer timer;

  getCurrentTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      DateTime now = DateTime.now();
      String time = DateFormat.jm().format(now);
      if (time != currentTime) {
        currentTime = time;
        notifyListeners();
      }
    });
  }

  getCurrentDate() {
    DateTime now = DateTime.now();
    currentDate = DateFormat.yMd().format(now);
    currentWeekDay = DateFormat.E("es").format(now).substring(0, 3);
    currentDay = now.day.toString();
    notifyListeners();
  }

  downloadCV() async {
    AnchorElement anchorElement =
        AnchorElement(href: "assets/assets/files/cv.pdf");
    anchorElement.type = "pdf";
    anchorElement.download = "Isaac Benavides CV";
    anchorElement.click();
  }

  close() {
    timer.cancel();
  }
}
