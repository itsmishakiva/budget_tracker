import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScanResultNotifier extends StateNotifier<String?> {
  ScanResultNotifier() : super(null);

  void updateScanResult(String? result) {
    state = result;
  }

  void clearResult() {
    state = null;
  }

  bool isNotNull() {
    return (state != null) ? true : false;
  }
}

final scanResultProvider = StateNotifierProvider<ScanResultNotifier, String?>(
  (ref) => ScanResultNotifier(),
);
