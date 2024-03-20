import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final loggerProvider = Provider<Logger>(
  (ref) => Logger('App Logger'),
);
