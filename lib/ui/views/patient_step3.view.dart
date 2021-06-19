import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/resources/style.resources.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class PatientStep3View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PatientStep3State();
}

class _PatientStep3State extends State<PatientStep3View> {
  String dropdownValue = 'Maladie de Crohn';
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
            currentStep: 3,
            selectedColor: Colors.white,
            unselectedColor: primaryColor,
          ),
        ),
        backgroundColor: secondaryColor,
        onPressed: () => Navigator.pushNamedAndRemoveUntil(context, patientHome, (route) => false),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final pageTitle = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Ma pathologie',
          style:
              GoogleFonts.openSans(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );

    final form = Padding(
      padding: EdgeInsets.only(top: 70.0),
      child: Column(
        children: <Widget>[
          getPathologieField(context),
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

  Widget getPathologieField(context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          decoration: Theme.of(context).inputDecorationTheme.inputOnWhiteBg.copyWith(
                labelText: '',
                prefixIcon: Icon(Icons.medical_services, color: Colors.white),
              ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              value: 'Maladie de Crohn',
              isDense: true,
              style: TextStyle(color: Colors.red),
              onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
              items: <String>['Maladie de Crohn', 'Rectocolite hémoragique']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
              //onChanged: bloc.changeCategoryField,
            ),
          ),
        );
      },
    );
  }
}
