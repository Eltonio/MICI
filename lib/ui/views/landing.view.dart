import 'package:flutter/material.dart';
import 'package:mici/routes/routes.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/widgets/buttons.widgets.dart';

class LandingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _landingState();
}

class _landingState extends State<LandingView> {
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
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TransparentButtonBig(
                text: 'Je suis un patient',
                onPressed: (() => Navigator.pushNamed(context, patientStep1)),
              ),
              TransparentButtonBig(
                text: 'Je suis un soignant',
                onPressed: (() {}),
              ),
              TransparentButtonBig(
                text: 'Je suis un promoteur',
                onPressed: (() {}),
              ),
            ],
          ),
        ),
        Image.asset('assets/images/chu_nice_logo.png', height: 50),
      ],
    );
  }
}
