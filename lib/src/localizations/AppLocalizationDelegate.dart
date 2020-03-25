import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_localizations/src/localizations/AppLocalization.dart';

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {

  const AppLocalizationDelegate();

  @override
  bool isSupported( Locale locale ) => [ 'en','es','fr' ].contains(
    locale.languageCode
  );

  @override
  Future<AppLocalization> load( Locale locale ) {
    return SynchronousFuture<AppLocalization>( AppLocalization( locale) );
  }

  @override
  bool shouldReload( AppLocalizationDelegate old ) => false;
}