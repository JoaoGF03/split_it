import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();

      Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.pushReplacementNamed(context, '/login'),
      );
    } catch (e) {
      Future.delayed(
        const Duration(seconds: 1),
        () => Navigator.pushNamed(context, '/error'),
      );
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppTheme.gradients.background,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/images/rectangle-r.png",
                        width: 198,
                        height: 98,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/images/rectangle-r.png",
                        width: 114,
                        height: 58,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 128,
                    height: 112,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/images/rectangle-l.png",
                        width: 114,
                        height: 58,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        "assets/images/rectangle-l.png",
                        width: 198,
                        height: 98,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
