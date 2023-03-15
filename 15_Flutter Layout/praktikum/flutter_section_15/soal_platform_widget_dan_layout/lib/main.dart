import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'material/nomorSatu.dart';
import 'material/nomorDua.dart';
import 'package:soal_platform_widget_dan_layout/cupertino/soalPrioritasDua.dart';
import 'package:soal_platform_widget_dan_layout/soal_explorasi/soalExplorasi.dart';

void main() {
  const colorStatusBarExplorasi = Color(0xFFE0DDDD);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: colorStatusBarExplorasi, // mengubah warna status bar
  ));
  runApp(const SoalExplorasi());
}
