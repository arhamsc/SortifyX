import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';

import '../shared/utils/my_talker.dart';

class AppConfig {
  Future<void> configureBloc() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );

    Bloc.observer = getIt.get<MyTalker>().talkerBlocObserver;
  }

  Future<void> loadEnv() async {
    await dotenv.load(
      fileName: ".env.dev",
    );
  }
}
