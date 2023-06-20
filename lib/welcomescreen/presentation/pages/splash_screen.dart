
import 'dart:async';
import 'package:flutter/material.dart';

import 'package:misasrd2/main.dart';

import '../../../flavors/flavors.dart';
import '../../../homescreen/presentation/pages/listaiglesias.dart';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:my_app/core/usecases/get_iglesias.dart.dart';
// import 'package:my_app/feature_lista_iglesias/presentation/lista_iglesias_screen.dart';

class SplashScreen extends StatefulWidget {
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
