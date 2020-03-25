import 'package:flutter/material.dart';
import 'package:minimal_localizations/src/localizations/AppLocalization.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build( BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        title: Text( AppLocalization.of( context ).title )
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all( 8.0 ),
          child: Text( AppLocalization.of( context ).body ),
        )
      ),
    );
  }
}