// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/main.dart';
import 'package:sortifyx_app/shared/app/cubits/cubits.dart';

class RootModal extends StatelessWidget {
  const RootModal({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
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
            ScaffoldMessenger.of(navigatorKey.currentContext ?? context)
                .showSnackBar(
              SnackBar(
                content: Container(
                  child: Column(
                    children: [
                      Text(modalTitle),
                      Text(modalMessage),
                    ],
                  ),
                ),
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.floating,
                elevation: 0.0,
              ),
            );
          },
          inactive: () {
            ScaffoldMessenger.of(navigatorKey.currentContext ?? context)
                .removeCurrentSnackBar();
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
