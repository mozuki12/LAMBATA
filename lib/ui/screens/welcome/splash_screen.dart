import 'package:flutter/material.dart';
import 'onboarding.dart'; // Pastikan ini mengarah ke file OnboardingScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tambahkan delay menggunakan Future.delayed untuk simulasi splash screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()), // Ganti dengan halaman selanjutnya
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/logopkm.png",
                  height: 128,
                  width: 128,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Bekerja Sama Dengan :",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.scale(
                  scale: 8.0,
                  child: Image.asset(
                    "assets/images/logomitra.png",
                    height: 211,
                    width: 33,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
