import 'package:flutter/material.dart';
import 'package:stock_portfolio/screens/portfolioScreen.dart';
import 'style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Portfolio',
      debugShowCheckedModeBanner: false,
      home: PortfolioScreen(),
      theme: ThemeData(
          textTheme: TextTheme(
        title: TitleTextStyle,
        subhead: SecondaryTitleTextStyle,
        body1: BodyTextStyle,
        body2: NonPrimaryTextStyle,
      )),
    );
  }
}
