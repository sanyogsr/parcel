import 'package:flutter/material.dart';
import 'package:myparcel/ui/views/home/home_page.dart';
import 'package:myparcel/utils/parcel_app_theme.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ParcelAppTheme.getLightTheme,
      home: HomePage(),
    );
  }
}
