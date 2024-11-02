import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkeurl, Map data) async {
  try {
  if (await ckeckInternet()) {
    var response = await http.post(Uri.parse(linkeurl), body: data);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    if (response.statusCode == 200 || response.statusCode == 201) {
      Map responsebody = jsonDecode(response.body);
      print(responsebody);
      return Right(responsebody);
    } else {
      return Left(StatusRequest.serverfailuer);
    }
  } else {
    return const Left(StatusRequest.offlinefailuer);
  }
} catch (e) {
  print('Exception: $e');
  return const Left(StatusRequest.serverfailuer);
}

  }

  




}
