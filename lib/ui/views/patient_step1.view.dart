import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:mici/ui/resources/style.resources.dart';

enum Gender { Homme, Femme }

class PatientStep1View extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PatientStep1State();
}

class _PatientStep1State extends State<PatientStep1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: _buildBody(context),
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
      padding: EdgeInsets.only(top: 100.0),
      child: Column(
        children: <Widget>[getGenderField(context), getBirthField(context)],
      ),
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(color: primaryColor),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 100.0, left: 30.0, right: 30.0, bottom: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              pageTitle,
              form,
              //getLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getGenderField(BuildContext context) {
    return Container();
    /*Gender _character;
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<Gender>(
            value: Gender.Homme,
            //groupValue: _character,
            onChanged: (Gender? value) {
              setState(() {
                if (value != null) _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<Gender>(
            value: Gender.Femme,
            //groupValue: _character,
            onChanged: (Gender? value) {
              setState(() {
                if (value != null) _character = value;
              });
            },
          ),
        ),
      ],
    );*/
  }

  Widget getBirthField(BuildContext context) {
    return TextFormField(
      decoration: Theme.of(context).inputDecorationTheme.inputHead1.copyWith(
            labelText: 'Date de naissance',
            prefixIcon: Icon(Icons.cake, color: Colors.white),
          ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );
  }
}
