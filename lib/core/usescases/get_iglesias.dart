import '../entities/iglesia.dart';
import '../repositories/parroquias_repository.dart';

class GetIglesias {
  final ParroquiaRepository repository;

  GetIglesias(this.repository);

  Future<List<Parroquia>> call() async {
    return await repository.getIglesias();
  }
}

