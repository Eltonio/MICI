import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mici/routes/router.dart' as router;
import 'package:mici/routes/routes.dart';
import 'package:mici/theme.dart';
import 'package:mici/ui/resources/colors.resources.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: secondaryColor,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Observ\'MICI',
      theme: buildThemeData(),
      onGenerateRoute: router.generateRoute,
      initialRoute: landingViewRoute,
    );
  }
}
