import 'package:flutter/material.dart';

import '../../../flavors/flavors.dart';
import '../widgets/parroquia_list.dart';

class ListaIglesiasScreen  extends StatelessWidget {
  const ListaIglesiasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text(F.title),
    ),
    body: Center(
    child:Column(
      children: [
        Text(
          'Hello ${F.title}',
        ),
        const SizedBox(
          height: 350.0,
          child: ParroquiasList(),
        ),
        const SizedBox(height: 10.0,),
        IconButton(onPressed: ()=>{}, icon: const Icon(Icons.refresh)),
      ],
    ),
    ));
  }
}
