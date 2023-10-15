part of 'modal_cubit.dart';

enum ModalType {
  loading,
  success,
  error,
  warning,
  info,
}

@freezed
class ModalState with _$ModalState {
  const factory ModalState.initial() = _ModalInitial;

  const factory ModalState.active({
    required String modalMessage,
    required String modalTitle,
    required ModalType modalType,
    @Default(false) bool isModal,
    Widget? modalChild,
    @Default(false) bool disableClose,
    @Default(true) bool fullScreen,
    @Default(false) bool showButton1,
    @Default(false) bool showButton2,
    @Default("") String? button1Text,
    @Default("") String? button2Text,
    Function()? button1OnPressed,
    Function()? button2OnPressed,
    double? modalHeight,
  }) = _ModalActive;

  const factory ModalState.inactive() = _ModalInactive;
}
