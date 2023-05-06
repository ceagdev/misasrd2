import 'package:equatable/equatable.dart';

class Parroquia extends Equatable {
  const Parroquia({required this.id, required this.name, required this.address, required this.schedule});

  final int id;
  final String name;
  final String address;
  final String schedule;

  @override
  List<Object> get props => [id, name, address, schedule];
}