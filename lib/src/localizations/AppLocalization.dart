import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class AppLocalization {
  AppLocalization( this._locale );
  final Locale _locale;
  static AppLocalization of( BuildContext context ) {
    return Localizations.of<AppLocalization>( context, AppLocalization );
  }
  static Map<String, Map<String, String>> _localizedValues = {
    'en'  : {
      'title' : 'Demo Localization',
      'body' : 'Hello World'
    },
    'es'  : {
      'title' : 'Localizacion de demostracion',
      'body' : 'Hola Mundo'
    },
    'fr'  : {
      'title' : 'localisation de démonstration',
      'body' : 'Bonjour Le monde'
    }
  };
  String get title => _localizedValues[ _locale.languageCode ][ 'title' ];
  String get body => _localizedValues[ _locale.languageCode ][ 'body' ];

}