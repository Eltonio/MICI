import 'package:flutter/material.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/widgets/buttons.widgets.dart';

class PatientHomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _patientHomeState();
}

class _patientHomeState extends State<PatientHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TransparentButtonBig(
                  text: 'Mon profil',
                  onPressed: (() => Navigator.pushNamed(context, patientStep1)),
                  color: primaryColor),
              TransparentButtonBig(
                  text: 'Les centres experts MICI', onPressed: (() {}), color: thirtyColor),
              TransparentButtonBig(
                  text: 'Mon essai clinique', onPressed: (() {}), color: fortyColor),
            ],
          ),
        ),
        Image.asset('assets/images/chu_nice_logo.png', height: 50),
      ],
    );
  }
}
