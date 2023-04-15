import '/core/utils/routes_manager.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import 'package:flutter/material.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const DeepDive());
}

class DeepDive extends StatelessWidget {
  const DeepDive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesManager.router,
      debugShowCheckedModeBanner: false,
      title: 'Deep-Dive',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

