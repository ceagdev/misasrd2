
import 'dart:async';
import 'package:flutter/material.dart';

import '../../../homescreen/presentation/pages/listaiglesias.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    await Navigator.of(context).pushReplacement(
      // MaterialPageRoute(builder: (context) => const ListaIglesiasScreen()),
      MaterialPageRoute(builder: (context) => const ListaIglesiasScreen()),
    );

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Bienvenido'),
      ),
    );
  }
}
