import 'package:google_fonts/google_fonts.dart';
import 'package:mici/ui/resources/colors.resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransparentButtonBig extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double marginTop;
  final Color color;

  TransparentButtonBig({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.marginTop = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      height: 60.0,
      width: MediaQuery.of(ctx).size.width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(width: 0.0, color: Colors.white),
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.openSans(color: Colors.white),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
