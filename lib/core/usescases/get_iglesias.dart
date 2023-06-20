import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entities/iglesia.dart';
import '../repositories/parroquias_repository.dart';

class GetIglesiasUseCase {
  final ParroquiaRepository repository;

  GetIglesiasUseCase(this.repository);

  Future<AsyncValue<List<Parroquia>>> call() async {
    try {
       final parroquias = await repository.getIglesias();
       return AsyncValue.data(parroquias);
    } catch (error) {
      return AsyncValue.error(error, StackTrace.current);
    }
  }

}
