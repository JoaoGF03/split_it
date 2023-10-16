import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
