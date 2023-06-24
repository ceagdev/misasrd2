import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:lista_iglesias/core/errors/exceptions.dart';

import '../entities/iglesia.dart';

abstract class ParroquiaRepository {
  Future<List<Parroquia>> getIglesias();
}

class ParroquiaRepositoryImpl implements ParroquiaRepository {
  // // final FirebaseFirestore firestore;
  //
  // // IglesiaRepositoryImpl({required this.firestore});
  //
  // @override
  // Future<List<Parroquia>> getIglesias() async {
  //   try {
  //     final iglesiasSnapshot = await firestore.collection('iglesias').get();
  //     return iglesiasSnapshot.docs.map((doc) => Parroquia.fromJson(doc.data())).toList();
  //   } on FirebaseException {
  //     throw DataSourceException();
  //   }
  // }
  @override
  Future<List<Parroquia>> getIglesias() async {

      final response = await http.get(
        Uri.https(
          'my-json-server.typicode.com',
          '/ceagdev/parroquiaListServer/parroquias',
         ),
      );
      if (response.statusCode == 200) {
        if (kDebugMode) {
          print("Sucess with Code:"'${response.statusCode}');
        }
        final body = json.decode(response.body) as List;
        if (kDebugMode) {
          print("---- BODY ----");
        }
        if (kDebugMode) {
          print(body);
        }
        return body.map((dynamic json) {
          final map = json as Map<String, dynamic>;
          return Parroquia(
            id: map['id'] as int,
            name: map['name'] as String,
            address: map['address'] as String,
            schedule: map['schedule'] as String,
          );
        }).toList();
      }
      throw Exception('error fetching parroquias');

  }
}
