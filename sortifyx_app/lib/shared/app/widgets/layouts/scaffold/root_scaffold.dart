// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sortifyx_app/shared/app/app.dart';
import 'package:sortifyx_app/shared/app/widgets/listeners/family_bloc_listener.dart';
import 'package:sortifyx_app/shared/app/widgets/listeners/user_bloc_listener.dart';

class RootScaffold extends StatelessWidget {
  const RootScaffold({
    super.key,
    required this.body,
  });
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RootModal(
        child: UserBlocListener(
          child: FamilyBlocListener(
            child: body,
          ),
        ),
      ),
    );
  }
}
