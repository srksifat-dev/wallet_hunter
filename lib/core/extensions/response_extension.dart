import 'package:dio/dio.dart';

///Provides Extensions on Dio Response
extension ResponseExtension on Response<dynamic> {
  ///returns true if response is successful
  bool get isSuccessful => (statusCode! ~/ 100) == 2;

  ///returns true if response is not successful
  bool get isNotSuccessful => !isSuccessful;
}