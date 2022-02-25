import 'package:flutter/material.dart';
const babyBlue = Color(0xffD2E2E9);
const babyBlue2 = Color(0xffb8c7cc);
const green = Color(0xff44655E);
const gray = Color(0xff839793);

double sizeFromHeight(BuildContext context, double fraction,
    {bool hasAppBar = true}) {
  final screenHeight = MediaQuery.of(context).size.height;
  fraction = (hasAppBar
      ? (screenHeight -
      AppBar().preferredSize.height -
      MediaQuery.of(context).padding.top-MediaQuery.of(context).padding.bottom)
      : screenHeight) /
      fraction;
  return fraction;
}

double sizeFromWidth(
    BuildContext context,
    double fraction,
    ) {
  return MediaQuery.of(context).size.width / fraction;
}