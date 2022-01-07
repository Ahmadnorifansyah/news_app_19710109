import 'package:flutter/material.dart';
import 'package:app_berita_19710109/home_view.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 7);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "img/ulililala.jpg",
              width: 375.0,
              height: 275.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            "| Ahmad Norifansyah (19710109) // 5A Sistem Informasi (RBJM) // Berau, 14 September 2001 // Jl. Ery Suparjan No. 11a |",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          Text(
            " ",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.indigoAccent[100]),
          )
        ],
      ),
    );
  }
}
