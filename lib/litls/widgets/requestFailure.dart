//
// abstract class Failure {
//   String errorMessage;
//   Failure(this.errorMessage);
// }
//
// class ServerFailure extends Failure {
//   ServerFailure(super.errorMessage);
//
//   factory ServerFailure.fromDioError(DioException dioError) {
//     switch (dioError.type) {
//       case DioExceptionType.connectionTimeout:
//         return ServerFailure('انتهت مهلة الاتصال بالخادم.');
//       case DioExceptionType.sendTimeout:
//         return ServerFailure('استغرق إرسال البيانات وقتًا أطول من المتوقع.');
//       case DioExceptionType.receiveTimeout:
//         return ServerFailure('استغرق استلام البيانات من الخادم وقتًا أطول من المتوقع.');
//       case DioExceptionType.badCertificate:
//         return ServerFailure('كانت هناك مشكلة في شهادة الأمان.');
//       case DioExceptionType.badResponse:
//         return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
//       case DioExceptionType.cancel:
//         return ServerFailure('تم إلغاء الطلب.');
//       case DioExceptionType.connectionError:
//         return ServerFailure('لا يوجد اتصال بالإنترنت.');
//       case DioExceptionType.unknown:
//         print(dioError.error);
//         return ServerFailure('حدث خطأ غير متوقع، يرجى المحاولة مرة أخرى.');
//       default:
//         return ServerFailure('حدث خطأ غير معروف، يرجى المحاولة مرة أخرى لاحقًا.');
//     }
//   }
//
//   factory ServerFailure.fromResponse(int statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure('تم رفض الطلب أو غير مصرح به.');
//     } else if (statusCode == 404) {
//       return ServerFailure('الطلب غير موجود.');
//     } else if (statusCode == 500) {
//       return ServerFailure('خطأ داخلي في الخادم.');
//     } else {
//       return ServerFailure('حدث خطأ غير متوقع، يرجى المحاولة مرة أخرى لاحقًا.');
//     }
//   }
// }
