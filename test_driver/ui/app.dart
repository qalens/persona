import 'dart:io';
import 'package:persona/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';
void main() {
  enableFlutterDriverExtension();
  runApp(PersonaApp('local'));
}