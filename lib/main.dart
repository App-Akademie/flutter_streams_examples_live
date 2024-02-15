import 'package:flutter/material.dart';
import 'package:flutter_streams_examples_live/features/location/location_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        //home: IpAddressScreen(),
        home: LocationScreen());
  }
}
