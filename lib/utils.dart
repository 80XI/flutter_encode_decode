import 'package:flutter/material.dart';

double pw(BuildContext context, double p) {
  return MediaQuery.of(context).size.width*(p/100);
}

double ph(BuildContext context, double p) {
  return MediaQuery.of(context).size.height*(p/100);
}