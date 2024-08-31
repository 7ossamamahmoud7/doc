import 'package:dio/dio.dart';
import 'package:doc/core/networking/api_constants.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/data/models/login_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(
    Dio dio, {
    String? baseUrl,
  }) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
