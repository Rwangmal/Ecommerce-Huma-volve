import 'package:dio/dio.dart';
import '../constants/api_constants.dart';
class ApiClient {
  Dio dio;
  ApiClient (): dio=Dio(BaseOptions(baseUrl: ApiConstant.baseUrl));
}
//'https://api.escuelajs.co/api/v1/auth/login'