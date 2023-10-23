// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/main.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/cubits.dart';
import 'package:flash/flash.dart';

class RootModal extends StatelessWidget {
  RootModal({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  // Flushbar? _flushbar;

  // final flushBarKey = const GlobalObjectKey("MY_FLUSH_BAR");
  FlashController? _flashController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ModalCubit, ModalState>(
      listener: (context, modalState) {
        modalState.when(
          initial: () => {},
          active: (
            modalMessage,
            modalTitle,
            modalType,
            isModal,
            modalChild,
            disableClose,
            fullScreen,
            showButton1,
            showButton2,
            button1Text,
            button2Text,
            button1OnPressed,
            button2OnPressed,
            modalHeight,
          ) {
            showFlash(
              context: navigatorKey.currentContext ?? context,
              persistent: false,
              duration: modalType != ModalType.loading
                  ? const Duration(seconds: 4)
                  : null,
              builder: (context, controller) {
                _flashController = controller;
                return FlashBar(
                  controller: controller,
                  behavior: FlashBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Palette.tertiaryDefault,
                      // strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                  showProgressIndicator: modalType == ModalType.loading,
                  backgroundColor: modalType == ModalType.info
                      ? Palette.secondaryDefault
                      : modalType == ModalType.success
                          ? Palette.quaternaryDefault
                          : modalType == ModalType.error
                              ? Colors.redAccent
                              : modalType == ModalType.warning
                                  ? Colors.yellowAccent
                                  : Palette.secondaryDefault,
                  elevation: 0,
                  margin: const EdgeInsets.all(32.0),
                  clipBehavior: Clip.antiAlias,
                  indicatorColor: Colors.red,
                  icon: modalType != ModalType.loading
                      ? Icon(
                          modalType == ModalType.info
                              ? Icons.info_outline_rounded
                              : modalType == ModalType.success
                                  ? Icons.done_outline_rounded
                                  : modalType == ModalType.error
                                      ? Icons.error
                                      : modalType == ModalType.warning
                                          ? Icons.warning_amber_rounded
                                          : Icons.account_circle_outlined,
                          color: modalType == ModalType.info
                              ? Palette.primaryDefault
                              : modalType == ModalType.success
                                  ? Palette.lightBG
                                  : modalType == ModalType.error
                                      ? Palette.secondaryDefault
                                      : modalType == ModalType.warning
                                          ? Palette.primaryDefault
                                          : Palette.primaryDefault,
                        )
                      : null,
                  insetAnimationDuration: const Duration(
                    milliseconds: 500,
                  ),
                  title: TextTitleSmall(
                    text: modalTitle,
                  ),
                  content: TextBodySmall(text: modalMessage),
                );
              },
            );
          },
          inactive: () {
            _flashController?.dismiss();
          },
        );
      },
      builder: (context, modalState) {
        //TODO: Implement a Widget, in case isModal is true
        return Stack(
          children: [
            child,
            // if (modalState is ModalActive)
            AnimatedSwitcher(
              duration: 300.ms,
              child: modalState.when(
                initial: () => const SizedBox(
                  key: ValueKey(0),
                ),
                active: (
                  modalMessage,
                  modalTitle,
                  modalType,
                  isModal,
                  modalChild,
                  disableClose,
                  fullScreen,
                  showButton1,
                  showButton2,
                  button1Text,
                  button2Text,
                  button1OnPressed,
                  button2OnPressed,
                  modalHeight,
                ) =>
                    const Stack(
                  key: ValueKey(1),
                  children: [
                    // BackdropFilter(
                    //   filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    //   child: Center(
                    //     child:
                    //     MainModal(
                    //       modalChild: modalChild,
                    //       modalTitle: modalTitle,
                    //       disableClose: disableClose,
                    //       fullScreen: fullScreen,
                    //       showButton1: showButton1,
                    //       showButton2: showButton2,
                    //       button1OnPressed: button1OnPressed,
                    //       button2OnPressed: button2OnPressed,
                    //       button1Text: button1Text,
                    //       button2Text: button2Text,
                    //       modalHeight: modalHeight,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                inactive: () => const SizedBox(key: ValueKey(2)),
              ),
            )
          ],
        );
      },
    );
  }
}
