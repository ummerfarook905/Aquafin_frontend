import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget body;

  const GradientScaffold({
    super.key,
    required this.body, // ✅ add required
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0277BD), // Dark Blue (top)
            Color(0xFFE1F5FE), // Light Blue (bottom)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, 
        body: body,// ✅ keeps gradient visible
      ),
    );
  }
}