import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/resources/style.resources.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

enum Gender { Homme, Femme }

class PatientStep1View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PatientStep1State();
}

class _PatientStep1State extends State<PatientStep1View> {
  Gender? _character = Gender.Femme;

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
            totalSteps: 5,
            stepSize: 5,
            currentStep: 1,
            selectedColor: Colors.white,
            unselectedColor: primaryColor,
          ),
        ),
        backgroundColor: secondaryColor,
        onPressed: () => Navigator.pushNamed(context, patientStep2),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final pageTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Je suis ...',
          style:
              GoogleFonts.openSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );

    final form = Padding(
      padding: EdgeInsets.only(top: 70.0),
      child: Column(
        children: <Widget>[getGenderField(context), SizedBox(height: 20), getBirthField(context)],
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

  Widget getGenderField(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Radio<Gender>(
              activeColor: secondaryColor,
              value: Gender.Homme,
              groupValue: _character,
              onChanged: (Gender? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Text(
              'un homme',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Row(
          children: [
            Radio<Gender>(
              activeColor: secondaryColor,
              value: Gender.Femme,
              groupValue: _character,
              onChanged: (Gender? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Text(
              'une femme',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }

  Widget getBirthField(BuildContext context) {
    return TextFormField(
      readOnly: true,
      initialValue: getBirth(),
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Date de naissance',
            prefixIcon: Icon(Icons.cake, color: Colors.white),
          ),
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      onTap: () => _selectDate(context),
    );
  }

  String getBirth() {
    return selectedDate.day.toString() +
        '/' +
        selectedDate.month.toString() +
        '/' +
        selectedDate.year.toString();
  }
}
