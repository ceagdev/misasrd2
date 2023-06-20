import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/entities/iglesia.dart';
import '../core/repositories/parroquias_repository.dart';
import '../core/usescases/get_iglesias.dart';

// Provider para el repositorio de parroquias
final parroquiaRepositoryProvider = Provider<ParroquiaRepository>((ref) {
  return ParroquiaRepositoryImpl();
});

// Provider para el caso de uso GetIglesias
final Provider getIglesiasUseCaseProvider = Provider<GetIglesiasUseCase>((ref) {
  final parroquiaRepository = ref.watch(parroquiaRepositoryProvider);
  return GetIglesiasUseCase(parroquiaRepository);
});

final FutureProvider parroquiaListProvider = FutureProvider<AsyncValue<List<Parroquia>>>((ref) async{
  return ref.watch(getIglesiasUseCaseProvider).call();
});