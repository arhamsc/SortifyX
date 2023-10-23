import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';

class UserBlocListener extends StatelessWidget {
  const UserBlocListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, userState) {
        userState.status.when(
          initial: () {},
          loading: () {
            getIt.get<ModalCubit>().showModal(
                  modalMessage: userState.loadingMessage,
                  modalTitle: "Loading",
                  modalType: ModalType.loading,
                );
          },
          success: () {
            getIt.get<ModalCubit>().showModal(
                  modalMessage: userState.successMessage,
                  modalTitle: "Great!!",
                  modalType: ModalType.success,
                );
          },
          error: () {
            getIt.get<ModalCubit>().showModal(
                  modalMessage: userState.errorMessage,
                  modalTitle: "OOPs!!",
                  modalType: ModalType.error,
                );
          },
          loggedOut: () {
            getIt.get<ModalCubit>().showModal(
                  modalMessage: userState.successMessage,
                  modalTitle: "Logged Out",
                  modalType: ModalType.info,
                );
          },
          loggedIn: () {
            getIt.get<ModalCubit>().showModal(
                  modalMessage: userState.successMessage,
                  modalTitle: "Welcome!!",
                  modalType: ModalType.success,
                );
          },
        );
      },
      child: child,
    );
  }
}
