// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:sizer/sizer.dart';

import 'package:sortifyx_app/shared/app/app_theme.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

class PrimaryAnimatedButton extends StatefulWidget {
  const PrimaryAnimatedButton({
    Key? key,
    this.variant = 1,
    this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.disabled = false,
    this.elevation,
    this.labelWidget,
    this.isLoading = false,
    this.isSuccess = false,
    this.successCallback,
  }) : super(key: key);
  final int variant;
  final Function()? onPressed;
  final String label;
  final double? width;
  final double? height;
  final bool disabled;
  final double? elevation;
  final Widget? labelWidget;
  final bool isLoading;
  final bool isSuccess;
  final Function()? successCallback;

  @override
  State<PrimaryAnimatedButton> createState() => _PrimaryAnimatedButtonState();
}

class _PrimaryAnimatedButtonState extends State<PrimaryAnimatedButton> {
  SMITrigger? _checked, _loading;
  bool _showAnimation = false;

  void _onInit(Artboard art) {
    var ctrl = StateMachineController.fromArtboard(art, 'State Machine 1')
        as StateMachineController;
    art.addController(ctrl);
    _checked = ctrl.findInput<bool>('Check') as SMITrigger;
    _loading = ctrl.findInput<bool>('Reset') as SMITrigger;
  }

  void onTap() {
    setState(() {
      _showAnimation = true;
    });
    _loading?.fire();
  }

  void onSuccess() {
    if (widget.isSuccess) {
      _checked?.fire();
      Future.delayed(
          const Duration(
            seconds: 2,
          ), () {
        setState(() {
          _showAnimation = false;
        });
        widget.successCallback != null ? widget.successCallback!() : null;
      });
    }
  }

  @override
  void didUpdateWidget(covariant PrimaryAnimatedButton oldWidget) {
    onSuccess();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? getHeight(45),
      width: widget.width,
      child: ElevatedButton(
        onPressed: widget.disabled
            ? null
            : () {
                if (_showAnimation == false) {
                  onTap();
                }
                widget.onPressed != null ? widget.onPressed!() : null;
              },
        style: ElevatedButton.styleFrom(
          elevation: widget.elevation ?? 0,
          padding: widget.width == null && widget.height == null
              ? EdgeInsets.symmetric(
                  horizontal: getWidth(120),
                  vertical: getHeight(5),
                )
              : null,
          foregroundColor: colors(context).lightBG,
          backgroundColor: widget.variant == 2
              ? colors(context).tertiaryDefault
              : colors(context).primaryDefault,
          textStyle: Theme.of(context).textTheme.titleMedium,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: widget.variant == 2
                  ? colors(context).secondaryDefault!
                  : colors(context).tertiaryDefault!,
              width: 1.sp,
            ),
            borderRadius: BorderRadius.circular(
              6.sp,
            ),
          ),
        ),
        child: widget.labelWidget ??
            ((_showAnimation)
                ? SizedBox(
                    width: 6.w,
                    height: 3.h,
                    child: RiveAnimation.asset(
                      "assets/animations/loading_spinner.riv",
                      stateMachines: const ["State Machine 1"],
                      fit: BoxFit.cover,
                      onInit: _onInit,
                    ),
                  )
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.label,
                    ),
                  )),
      ),
    );
  }
}
