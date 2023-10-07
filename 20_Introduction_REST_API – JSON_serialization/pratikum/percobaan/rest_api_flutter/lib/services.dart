import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rest_api_flutter/services.dart';

class MyServices {
  final Dio dio = Dio();

  Future fetchUsers() async {
    try {
      final Response response = await dio.get('https://reqres.in/api/users');
      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future createUser({
    required String name,
    required String job,
  }) async {
    try {
      final Response response = await dio.post(
        'https://reqres.in/api/users',
        data: {
          'name' : name,
          'job' : job,
        },
      );

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
  
  Future deleteUser() async{
    try {
      final Response response = await dio.delete('https://reqres.in/api/users/4');

      debugPrint(response.data.toString());

      return response.data;
    }catch (e) {
      rethrow;
    }
  }
}
