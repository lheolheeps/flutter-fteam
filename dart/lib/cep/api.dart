import 'package:dio/dio.dart';


Future<Response<Map<String, dynamic>>> getDioHttp(String cep) async {
  try {
    final dio = Dio();
    final response = await dio.get<Map<String, dynamic>>('https://viacep.com.br/ws/$cep/json/');
    return response;
  } catch (e) {
    throw 'não foi possivel buscar o endereço, tente novamente';
  }
}