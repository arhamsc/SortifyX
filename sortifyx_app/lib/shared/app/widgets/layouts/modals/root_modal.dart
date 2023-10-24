// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/main.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/cubits.dart';
import 'package:flash/flash.dart';

// ignore: must_be_immutable
class RootModal extends StatelessWidget {
  RootModal({
    super.key,
    required this.child,
  });
  final Widget child;

  Completer _c = Completer();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ModalCubit, ModalState>(
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
          ) async {
            if (modalType != ModalType.loading) {
              !_c.isCompleted ? _c.complete() : null;
            } else {
              _c = Completer();
            }

            await (navigatorKey.currentContext ?? context).showFlash(
              persistent: false,
              duration: modalType != ModalType.loading
                  ? const Duration(seconds: 4)
                  : null,
              dismissCompleter: modalType == ModalType.loading ? _c : null,
              builder: (context, controller) {
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
            // getIt.get<MyTalker>().talker.log(_flashController);
            !_c.isCompleted ? _c.complete() : null;
          },
        );
      },
      child: child,
    );
  }
}
