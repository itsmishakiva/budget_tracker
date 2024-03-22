import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

enum PinCodeGraphicStates {
  common,
  success,
  error,
  loading,
}

class PinCodeGraphics extends StatelessWidget {
  const PinCodeGraphics({
    super.key,
    required this.pin,
    required this.state,
    required this.onSuccessFinish,
    required this.onErrorFinish,
    required this.onDefaultFilled,
  });

  final String pin;
  final PinCodeGraphicStates state;
  final Function onSuccessFinish;
  final Function onErrorFinish;
  final Function onDefaultFilled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _PinCodeGraphicTile(
            index: index,
            pin: pin,
            state: state,
            onErrorFinish: onErrorFinish,
            onSuccessFinish: onSuccessFinish,
            onDefaultFilled: onDefaultFilled,
          ),
        ),
      ),
    );
  }
}

class _PinCodeGraphicTile extends StatefulWidget {
  const _PinCodeGraphicTile({
    required this.index,
    required this.pin,
    required this.state,
    required this.onErrorFinish,
    required this.onSuccessFinish,
    required this.onDefaultFilled,
  });

  final int index;
  final String pin;
  final PinCodeGraphicStates state;
  final Function onSuccessFinish;
  final Function onErrorFinish;
  final Function onDefaultFilled;
  static const _graphicSize = 16.0;

  @override
  State<_PinCodeGraphicTile> createState() => _PinCodeGraphicTileState();
}

class _PinCodeGraphicTileState extends State<_PinCodeGraphicTile>
    with TickerProviderStateMixin {
  late final AnimationController _inputAnimationController;
  late final AnimationController _errorAnimationController;
  late final AnimationController _successAnimationController;

  @override
  void initState() {
    super.initState();
    _inputAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
    );
    _errorAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
      lowerBound: -0.5,
      upperBound: 0.5,
    );
    _errorAnimationController.value = 0;
    _successAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _errorAnimationController.dispose();
    _successAnimationController.dispose();
    _inputAnimationController.dispose();
    super.dispose();
  }

  Widget _getTileUi(Color color) {
    return Container(
      width: _PinCodeGraphicTile._graphicSize,
      height: _PinCodeGraphicTile._graphicSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  (Animation<double>?, Color) _getCurrentUiData(PinCodeGraphicStates state) {
    Color color = context.colors.disabled;
    AnimationController? animation;
    switch (state) {
      case PinCodeGraphicStates.success:
        animation = _successAnimationController;
        Future(() async {
          await animation!.forward();
          await animation.animateBack(
            animation.lowerBound,
          );
          widget.onSuccessFinish();
        });
        color = context.colors.success;
        break;
      case PinCodeGraphicStates.error:
        animation = _errorAnimationController;
        Future(() async {
          Vibration.vibrate(amplitude: 255);
          animation!.repeat(reverse: true);
          await Future.delayed(const Duration(milliseconds: 500));
          widget.onErrorFinish();
        });
        color = context.colors.error;
        break;
      case PinCodeGraphicStates.common:
        animation = _inputAnimationController;
        if (widget.index < widget.pin.length) {
          Future(() async {
            if (widget.pin.length - 1 != widget.index) {
              return;
            }
            await animation!.forward();
            await animation.animateBack(
              animation.lowerBound,
            );
            if (widget.pin.length == 4) widget.onDefaultFilled();
          });
          color = context.colors.accent;
        }
        break;
      case PinCodeGraphicStates.loading:
        color = context.colors.accent;
        break;
      default:
        break;
    }
    return (animation, color);
  }

  @override
  Widget build(BuildContext context) {
    Future(() {
      _errorAnimationController.stop();
      _errorAnimationController.value = 0;
    });

    final uiData = _getCurrentUiData(widget.state);
    final Color color = uiData.$2;
    final Animation<double>? animation = uiData.$1;

    if (animation == null) return _getTileUi(color);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        switch (widget.state) {
          case PinCodeGraphicStates.success:
          case PinCodeGraphicStates.common:
            return Transform.scale(
              scale: 1 + 0.2 * animation.value,
              child: child,
            );
          case PinCodeGraphicStates.error:
            return Transform.translate(
              offset: Offset(animation.value * 4, 0),
              child: child,
            );
          default:
            return child!;
        }
      },
      child: _getTileUi(color),
    );
  }
}
