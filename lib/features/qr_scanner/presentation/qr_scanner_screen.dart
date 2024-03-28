import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/qr_scanner/internal/scanner_reslut_provider.dart';
import 'package:budget_tracker/features/qr_scanner/presentation/widgets/qr_scanner_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

@RoutePage()
class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  ConsumerState createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(scanResultProvider);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FutureBuilder(
                      future: controller?.getFlashStatus(),
                      builder: (context, snapshot) {
                        return (snapshot.data == false)
                            ? IconButton(
                                icon: const Icon(Icons.lightbulb_outline),
                                onPressed: () async {
                                  await controller?.toggleFlash();
                                  setState(() {});
                                },
                              )
                            : IconButton(
                                icon: const Icon(Icons.lightbulb),
                                onPressed: () async {
                                  await controller?.toggleFlash();
                                  setState(() {});
                                },
                              );
                      },
                    ),
                    (result != null)
                        ? Text(
                            '${context.locale!.sum}: $result',
                          )
                        : Text(
                            context.locale!.scanCode,
                          ),
                    (ref.read(scanResultProvider.notifier).isNotNull())
                        ? IconButton(
                            icon: const Icon(CupertinoIcons.arrow_right),
                            onPressed: () {
                              ref
                                  .read(appRouterProvider)
                                  .navigateNamed('/operation_creation_sum');
                            },
                          )
                        : IconButton(
                            icon: Icon(
                              CupertinoIcons.arrow_right,
                              color: context.colors.textSecondary,
                            ),
                            onPressed: () {},
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    return Stack(
      children: [
        QRView(
          key: qrKey,
          onQRViewCreated: _onQRViewCreated,
          overlay: QrScannerOverlayShape(
            borderColor: Colors.blue,
            borderRadius: 10,
            borderLength: 30,
            borderWidth: 10,
            cutOutSize: scanArea,
          ),
          onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
        ),
        Positioned(
          left: 10,
          top: 50,
          child: QrScannerAppbar(
            onTap: () {
              ref.read(appRouterProvider).maybePop();
            },
          ),
        ),
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      RegExp pattern = RegExp(r'&s=([^&]*)&fn=');
      Match? match = pattern.firstMatch(scanData.code.toString());
      if (match != null) {
        ref
            .read(scanResultProvider.notifier)
            .updateScanResult(match.group(1).toString());
      }
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
