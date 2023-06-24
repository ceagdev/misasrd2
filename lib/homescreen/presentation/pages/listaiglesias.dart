import 'package:flutter/material.dart';
import 'package:misasrd2/constants/contants.dart';

import '../../../flavors/flavors.dart';
import '../widgets/parroquia_list.dart';

class ListaIglesiasScreen  extends StatelessWidget {
  const ListaIglesiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return  Scaffold(
        appBar: AppBar(
        title: const Text(ScreenTitles.home),
    ),
    body: Center(
    child:Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Hello ${F.title}',   // Eliminar este Widget para ir a produccion
          ),
        ),
        SizedBox(
          // height: 350.0,
          height: screenSize.height*0.75,
          child: const ParroquiasList(),
        ),
        const SizedBox(height: 10.0,),
        IconButton(onPressed: ()=>{}, icon: const Icon(Icons.refresh)),
      ],
    ),
    ));
  }
}
