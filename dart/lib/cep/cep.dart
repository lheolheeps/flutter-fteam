import 'dart:io';
import 'package:dart/cep/api.dart';
import 'package:dart/helpers/formatters.dart';
import 'package:dart/cep/cep_class.dart';

void getCep() async {
  late String? cep;
  print('começou');
  do {
    print('Digite o CEP:');
    cep = stdin.readLineSync() as String;
    final unformatedCep = cep.replaceAll('-', '');
    if (unformatedCep.length == 8 && isNumeric(unformatedCep)){
      final response = await getDioHttp(unformatedCep);
      final address = Address.fromMap(response.data ?? {});
      print(address.toString());
    } else {
      if (cep != '0') print('cep invalido, tente novamente');
    }
  } while (cep != '0');
}