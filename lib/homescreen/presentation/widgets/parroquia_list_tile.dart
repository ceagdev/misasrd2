import 'package:flutter/material.dart';
import 'package:misasrd2/themes/my_theme.dart';
import '../../../core/entities/iglesia.dart';

class ParroquiaListTile extends StatelessWidget {
  const ParroquiaListTile({Key? key, required this.parroquias})
      : super(key: key);

  final Parroquia parroquias;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyTheme.lightTheme.cardColor,
      elevation: 2.5,
      child: Container(
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
              Icon(
                Icons.church,
                color: MyTheme.lightTheme.iconTheme.color,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(parroquias.name)
            ],
          ),
        ),
      ),
    );
  }
}
