import 'package:flutter/material.dart';
import '../../../core/entities/iglesia.dart';

class ParroquiaListTile extends StatelessWidget {
  const ParroquiaListTile({Key? key, required this.parroquias})
      : super(key: key);

  final Parroquia parroquias;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => ParroquiaDetails(currentParroquia: parroquias),
          //   ),
          // ),
        },
        child: Row(
          children: [
            const Icon(Icons.accessibility_sharp),
            Text(parroquias.name)
          ],
        ),
      ),
    );
  }
}
