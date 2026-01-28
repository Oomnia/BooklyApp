import 'package:bookly_app/core/Utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model/Repos/home_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
     HomeRepoImplement(apiService: getIt.get<ApiService>()),
  );
}
