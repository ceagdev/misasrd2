import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/providers.dart';
import 'parroquia_list_tile.dart';

class ParroquiasList extends StatefulWidget {
  const ParroquiasList({Key? key}) : super(key: key);

  @override
  State<ParroquiasList> createState() => _ParroquiasListState();
}

class _ParroquiasListState extends State<ParroquiasList> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final getIglesiasUseCase = ref.watch(parroquiaListProvider);
      final parroquiasAsyncValue = getIglesiasUseCase;

      return parroquiasAsyncValue.when(
        data: (parroquias) {
              // Render ListView with the data
          return ListView.builder(
              itemCount: parroquias.value.length,
              itemBuilder: (context, index) {
                // Build list item
                return ParroquiaListTile(parroquias: parroquias.value[index]);
              });
        },
        loading: () {
          // Render loading indicator
          return const Center(child: CircularProgressIndicator());
        },
        error: (error, stackTrace) {
          // Render error message
          return Text('Error: $error');
        },
      );
    });
  }
}
