import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'widgetbook.directories.g.dart';

/* Widgetbook ====================================
Build command: $ flutter pub run build_runner build --delete-conflicting-outputs
Run command: $ flutter run -d chrome -t lib/widgetbook.dart
============================================== */

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
        directories: directories,
        addons: [
          AlignmentAddon(
            initialAlignment: Alignment.center,
          ),
        ],
        appBuilder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
          );
        });
  }
}
