import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';

class FamilyBlocListener extends StatelessWidget {
  const FamilyBlocListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<FamilyBloc, FamilyState>(
          listener: (context, familyState) {
            familyState.status.when(
              initial: () {},
              loading: () {
                getIt.get<ModalCubit>().showModal(
                      modalMessage: familyState.loadingMessage,
                      modalTitle: "Loading",
                      modalType: ModalType.loading,
                    );
              },
              success: () {
                getIt.get<ModalCubit>().showModal(
                      modalMessage: familyState.successMessage,
                      modalTitle: "Great!!",
                      modalType: ModalType.success,
                    );
              },
              error: () {
                getIt.get<ModalCubit>().showModal(
                      modalMessage: familyState.errorMessage,
                      modalTitle: "OOPs!!",
                      modalType: ModalType.error,
                    );
              },
              joinedFamily: () {
                getIt.get<UserBloc>().add(const UserEvent.checkUserHasFamily());
                getIt.get<ModalCubit>().showModal(
                      modalMessage: familyState.successMessage,
                      modalTitle: "Great!!",
                      modalType: ModalType.success,
                    );
              },
              registeredFamily: () {
                getIt.get<ModalCubit>().showModal(
                      modalMessage: familyState.successMessage,
                      modalTitle: "Great!!",
                      modalType: ModalType.success,
                    );
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}
