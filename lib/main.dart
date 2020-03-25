import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:minimal_localizations/src/localizations/AppLocalizationDelegate.dart';
import 'package:minimal_localizations/src/screens/HomeView.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget {

  @override
  Widget build( BuildContext context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        const Locale( 'en','' ),
        const Locale( 'es','' ),
        const Locale( 'fr','' ),
      ],
      home: HomeView(),
    );
  }
}