// class HandleNetworkCall {
//   HandleNetworkCall();
//
//   final _dioClient = getIt<Dio>();
//
//   Future<Either<String, Map<String, dynamic>>> getData<T>(T url) async {
//     try {
//       final Response<Map<String, dynamic>> response = await _dioClient.get(url);
//       if (response.statusCode == 200) {
//         return right(response.data!);
//       } else {
//         return left('Something went wrong, Please try again later');
//       }
//     } on DioError catch (dioError) {
//       if (dioError.isUnauthorizedAccess) {
//         return left(dioError.unAuthorizedMessage);
//       }
//       return left(dioError.serverErrorMessage);
//     }
//   }
// }
