import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>(
  (ref) => Dio(BaseOptions(baseUrl: 'http://158.160.76.83:8080/api')),
);
