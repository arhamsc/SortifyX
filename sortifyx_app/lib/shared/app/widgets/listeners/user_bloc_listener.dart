import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/cubits/modal_cubit/modal_cubit.dart';
import 'package:sortifyx_app/shared/utils/my_talker.dart';

class UserBlocListener extends StatelessWidget {
  const UserBlocListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
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
                getIt.get<UserBloc>().add(const UserEvent.checkUserHasFamily());
                getIt.get<ModalCubit>().showModal(
                      modalMessage: userState.successMessage,
                      modalTitle: "Welcome!!",
                      modalType: ModalType.success,
                    );
              },
              signedUp: () {},
            );
          },
        ),
        BlocListener<UserBloc, UserState>(
          listener: (context, userState) {
            getIt.get<MyTalker>().talker.log("Called Listener 2");
            if (!userState.userHasFamily) {
              GoRouter.of(context).refresh();
            } else {
              getIt
                  .get<AppRouter>()
                  .router
                  .pushReplacementNamed(RouteDetails.documentsHomePage.name);
            }
          },
        )
      ],
      child: child,
    );
  }
}
