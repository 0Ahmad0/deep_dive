import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with api server');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with api server');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with api server');

      case DioErrorType.badCertificate:
        return ServerFailure('BadCertificate  with api server');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioErrorType.connectionError:
        return ServerFailure('No internet connection');

      case DioErrorType.unknown:
        return ServerFailure('Opps There was an Error , Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your request was not found , please try later');
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem with server , please try later');
    }else if(statusCode == 401 || statusCode == 403 || statusCode == 400){
      return ServerFailure('${response['error']['message']}');
    }else{
      return ServerFailure('There was an error , please try again');
    }
  }
}
// class NetworkFailure extends Failure {
//
// }
// class CacheFailure extends Failure {
//
// }
