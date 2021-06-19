import 'package:flutter/material.dart';
import 'dart:ui';

const Color gradientStart = const Color(0xFF8AC7F2);
const Color gradientEnd = const Color(0xFFFFFFFF);

const primaryColor = gradientStart;
const secondaryColor = gradientEnd;

const primaryGradient = const LinearGradient(
  colors: const [gradientStart, gradientEnd],
  stops: const [0.0, 0.6],
  begin: Alignment.topRight,
  end: Alignment.bottomCenter,
);
