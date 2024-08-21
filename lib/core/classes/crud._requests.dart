import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkeurl, Map data) async {
    if (await ckeckInternet()) {
      var response = await http.post(Uri.parse(linkeurl), body: data);
      if (response.statusCode == 200) {
        Map responsebody = jsonDecode(response.body);
        return Right(responsebody);
      } else {
        return Left(StatusRequest.serverfailuer);
      }
    } else {
      return const Left(StatusRequest.offlinefailuer);
    }
  }
}
