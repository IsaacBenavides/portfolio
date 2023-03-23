import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeController extends ChangeNotifier {
  String currentTime = "12:00 AM";
  String currentDate = "01/01/2023";

  late Timer timer;

  getCurrentDateTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (time) {
      DateTime now = DateTime.now();
      String time = DateFormat.jm().format(now);
      if (time != currentTime) {
        currentTime = time;
        notifyListeners();
      }
    });
  }

  close() {
    timer.cancel();
  }
}
