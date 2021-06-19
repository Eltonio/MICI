import 'package:flutter/material.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/views/landing.view.dart';
import 'package:mici/ui/views/patient_home.view.dart';
import 'package:mici/ui/views/patient_step1.view.dart';
import 'package:mici/ui/views/patient_step2.view.dart';
import 'package:mici/ui/views/patient_step3.view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  dynamic p;

  switch (settings.name) {
    case landingViewRoute:
      p = LandingView();
      break;
    case patientStep1:
      p = PatientStep1View();
      break;
    case patientStep2:
      p = PatientStep2View();
      break;
    case patientStep3:
      p = PatientStep3View();
      break;
    case patientHome:
      p = PatientHomeView();
      break;
    /*case messagesViewRoute:
      p = MessagesView(chatId: settings.arguments.toString());
      break;*/
    default:
      p = null;
  }

  return MaterialPageRoute(builder: (context) => p);
}
