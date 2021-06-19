import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/resources/style.resources.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PatientStep2View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PatientStep2State();
}

class _PatientStep2State extends State<PatientStep2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: CircularStepProgressIndicator(
            totalSteps: 3,
            stepSize: 5,
            currentStep: 2,
            selectedColor: Colors.white,
            unselectedColor: primaryColor,
          ),
        ),
        backgroundColor: secondaryColor,
        onPressed: () => Navigator.pushNamed(context, patientStep3),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final pageTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Je suis un patient',
          style:
              GoogleFonts.openSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );

    final form = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          getFirstnameField(context),
          getLastnameField(context),
          getPhone(context),
          getEmailField(context)
        ],
      ),
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: primaryColor),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 200.0, left: 30.0, right: 30.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              pageTitle,
              form,
            ],
          ),
        ),
      ),
    );
  }

  Widget getFirstnameField(context) {
    return TextFormField(
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Prénom',
            prefixIcon: Icon(Icons.account_box_rounded, color: Colors.white),
          ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget getLastnameField(context) {
    return TextFormField(
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Nom',
            prefixIcon: Icon(Icons.account_box_rounded, color: Colors.white),
          ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget getPhone(context) {
    return TextFormField(
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Téléphone',
            prefixIcon: Icon(Icons.phone, color: Colors.white),
          ),
      keyboardType: TextInputType.phone,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }

  Widget getEmailField(context) {
    return TextFormField(
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Email',
            prefixIcon: Icon(Icons.email, color: Colors.white),
          ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }
}
