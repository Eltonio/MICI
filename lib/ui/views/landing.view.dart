import 'package:flutter/widgets.dart';
import 'package:mici/ui/resources/colors.resources.dart';

class LandingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _landingViewState();
}

class _landingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: primaryGradient),
    );
  }
}
