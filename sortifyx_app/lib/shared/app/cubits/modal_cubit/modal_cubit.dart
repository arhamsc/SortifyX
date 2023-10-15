import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modal_state.dart';
part 'modal_cubit.freezed.dart';

class ModalCubit extends Cubit<ModalState> {
  ModalCubit() : super(const ModalState.initial());

  //Modal Refers to SnackBar in this application
  void showModal({
    required String modalMessage,
    required String modalTitle,
    required ModalType modalType,
    bool isModal = false,
    Widget? modalChild,
    bool disableClose = false,
    bool fullScreen = false,
    bool? showButton1,
    bool? showButton2,
    Function()? button1OnPressed,
    Function()? button2OnPressed,
    String? button1Text,
    String? button2Text,
  }) {
    if (state is _ModalActive) {
      emit(const _ModalInactive());
    }
    emit(
      ModalState.active(
        modalChild: modalChild,
        modalMessage: modalMessage,
        modalType: modalType,
        isModal: isModal,
        modalTitle: modalTitle,
        disableClose: disableClose,
        fullScreen: fullScreen,
        button1OnPressed: button1OnPressed,
        button2OnPressed: button2OnPressed,
        showButton1: showButton1 ?? false,
        showButton2: showButton2 ?? false,
        button1Text: button1Text,
        button2Text: button2Text,
      ),
    );
  }

  void hideModal() {
    emit(const _ModalInactive());
  }
}
