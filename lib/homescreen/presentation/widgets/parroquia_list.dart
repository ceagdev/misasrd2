import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/entities/iglesia.dart';
import '../../../providers/providers.dart';
import 'bottom_loader.dart';
import 'parroquia_list_tile.dart';

class ParroquiasList extends StatefulWidget {
  const ParroquiasList({Key? key}) : super(key: key);

  @override
  State<ParroquiasList> createState() => _ParroquiasListState();
}

class _ParroquiasListState extends State<ParroquiasList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final getIglesiasUseCase = ref.watch(parroquiaListProvider);
      final  parroquiasAsyncValue = getIglesiasUseCase;

      return parroquiasAsyncValue.when(
        data: (parroquias) {
          // Render ListView with the data
          return ListView.builder(
            itemCount: parroquias.value.length,
            itemBuilder: (context, index) {
              // Build list item
              return ListTile(
                title: Text(parroquias.value[index].name),
              );
            },
          );
        },
        loading: () {
          print("************** Loading *************");
          // Render loading indicator
          return const CircularProgressIndicator();
        },
        error: (error, stackTrace) {
          // Render error message
          return Text('Error: $error');
        },
      );

      // return const Placeholder();

    });
  }
}

// @override
// Widget build(BuildContext context) {
//   return BlocBuilder<ParroquiasBloc, ParroquiasState>(
//     builder: (context, state) {
//       switch (state.status) {
//         case ParroquiasStatus.failure:
//           return const Center(child: Text('failed to fetch parroquias'));
//         case ParroquiasStatus.success:
//           if (state.parroquias.isEmpty) {
//             return const Center(child: Text('no parroquias'));
//           }
//           return ListView.builder(
//             itemBuilder: (BuildContext context, int index) {
//               return index >= state.parroquias.length
//                   ? const BottomLoader()
//                   : ParroquiaListTile(parroquias: state.parroquias[index]);
//             },
//             itemCount: state.hasReachedMax
//                 ? state.parroquias.length
//                 : state.parroquias.length - 1,
//             controller: _scrollController,
//           );
//         case ParroquiasStatus.initial:
//           return const Center(child: CircularProgressIndicator());
//       }
//     },
//   );
// }
//
//   @override
//   void dispose() {
//     _scrollController
//       ..removeListener(_onScroll)
//       ..dispose();
//     super.dispose();
//   }
//
//   void _onScroll() {
//     if (_isBottom) context.read<ParroquiasBloc>().add(ParroquiasFetched());
//   }
//
//   bool get _isBottom {
//     if (!_scrollController.hasClients) return false;
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.offset;
//     return currentScroll >= (maxScroll * 0.9);
//   }
// }
