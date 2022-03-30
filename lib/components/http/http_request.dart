import 'package:dio/dio.dart';
import 'package:square_garden/components/http/http_config.dart';

class HttpRequest {
  static Future request(String url,
      {String method = "get", Map<String, dynamic>? params}) async {
    //1.创建dio的实例
    BaseOptions baseOptions = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: TIMEOUT,
    );
    final dio = Dio(baseOptions);

    //2.发送网络请求
    Options options = Options(method: method);
    try {
      final result =
          await dio.request(url, queryParameters: params, options: options);
      return result;
    } on DioError catch (err) {
      return err;
    }
  }

  
}
