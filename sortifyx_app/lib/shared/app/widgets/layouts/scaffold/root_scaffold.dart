// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/widgets/layouts/scaffold/scaffold_items.dart';
import 'package:sortifyx_app/shared/app/widgets/listeners/family_bloc_listener.dart';
import 'package:sortifyx_app/shared/app/widgets/listeners/user_bloc_listener.dart';
import 'package:sortifyx_app/shared/utils/figma_to_flutter_size.dart';

class RootScaffold extends StatelessWidget {
   RootScaffold({
    super.key,
    required this.body,
    this.showAppBar = true,
    this.fullWidth = false,
  });
  final Widget body;
  final bool showAppBar;
  final bool fullWidth;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          key: _scaffoldKey,
          appBar: showAppBar ? ScaffoldItems.appBar(context, state, _scaffoldKey) : null,
          drawer: showAppBar ? ScaffoldItems.drawer(context) : null,
          body: RootModal(
            child: UserBlocListener(
              child: FamilyBlocListener(
                child: fullWidth
                    ? body
                    : Padding(
                        padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                        child: body,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
