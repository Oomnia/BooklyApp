import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  const Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with Server");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with Server");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data!,
        );
      case DioExceptionType.cancel:
        return ServerFailure("Request to server was cancelled");
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected error occurred");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");
        
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure('Your request not found , Please try later!');
    } else if (statuscode == 500) {
      return ServerFailure('Internal Server Error , Please try later!');
    } else {
      return ServerFailure('Something went wrong , Please try later!');
    }
  }
}
