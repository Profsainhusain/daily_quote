
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:daily_quote/views/quote_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.pink,
      accentColor: Colors.pinkAccent,
    ),
    home: QuoteList(),
  ));
}

