import 'package:dars92_platform_native_code/services/platform/battery_life.dart';
import 'package:flutter/material.dart';

/// BatteryScreen [BatteryScreen] mening dasturimning boshlanishi
class BatteryScreen extends StatefulWidget {
  const BatteryScreen({super.key});

  @override
  State<BatteryScreen> createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {
  int? batareyaHolati;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () async {
                  batareyaHolati = await BatteryLife.getBatteryLevel();
                  setState(() {});
                },
                child: const Text('Batareya Holatini Aniqlash'),
              ),
              Text(batareyaHolati == null
                  ? "Batareya holati"
                  : "Batareya foizi: $batareyaHolati"),
            ],
          ),
        ),
      ),
    );
  }
}
