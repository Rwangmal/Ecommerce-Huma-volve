import 'dart:async';

import '../../../../core/network/api_client.dart';
class loginService{
  ApiClient apiClient;
  loginService(this.apiClient);
  login({required String email, required String password})async{
await apiClient.dio.post(path)
  }
}