import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_flutter_api/cubit/my_cubit.dart';
import 'package:my_flutter_api/my_repo.dart';
import 'package:my_flutter_api/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  getIt.registerLazySingleton<WebServices>(
    () => WebServices(createAndSetupDio()),
  );
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = Duration(milliseconds: 200 * 1000)
    ..options.receiveTimeout = Duration(milliseconds: 200 * 1000);

  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      error: true,
      requestHeader: false,
      responseHeader: false,
      request: true,
      requestBody: true,
    ),
  );

  return dio;
}
