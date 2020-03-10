import 'package:flutter/material.dart';

const LargeTextStize = 30.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const Color greenColor = Color(0xff41dc65);
const Color redColor = Color(0xffff5460);
const Color backgroundColor = Color(0xfff7f7fa);
const Color textColor = Color(0xff444444);

const String FontNameDefault = 'Monserrat';

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontSize: LargeTextStize,
  color: textColor,
  fontWeight: FontWeight.w600,
  letterSpacing: 1.0,
);

const SecondaryTitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontSize: 50.0,
  fontWeight: FontWeight.w600,
  color: textColor,
);

const BodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: Colors.black,
);

const NonPrimaryTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: BodyTextSize,
  color: textColor,
);
