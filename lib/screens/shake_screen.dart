import 'package:dars92_platform_native_code/services/platform/shake_phone.dart';
import 'package:flutter/material.dart';

class ShakeScreen extends StatefulWidget {
  const ShakeScreen({super.key});

  @override
  State<ShakeScreen> createState() => _ShakeScreenState();
}

class _ShakeScreenState extends State<ShakeScreen> {
  int counter = 0;

  @override
  void initState() {
    super.initState();

    ShakePhone.shakeEvent().listen((_) {
      counter++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shake Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Shake count:',
              style: TextStyle(fontSize: 24),
            ), // Text
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ), // Center
    );
  }
}
