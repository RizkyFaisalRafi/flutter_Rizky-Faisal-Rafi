import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'material/nomor_satu.dart';
import 'material/nomor_dua.dart';
import 'package:soal_platform_widget_dan_layout/cupertino/soal_prioritas_dua.dart';
import 'package:soal_platform_widget_dan_layout/soal_explorasi/soal_explorasi.dart';

void main() {
  const colorStatusBarExplorasi = Color(0xFFE0DDDD);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: colorStatusBarExplorasi, // mengubah warna status bar
  ));
  runApp(const SoalExplorasi());
}
