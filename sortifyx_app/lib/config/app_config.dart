import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sortifyx_app/shared/utils/my_talker.dart';

class AppConfig {
  Future<void> configureBloc() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );

    Bloc.observer = MyTalker.instance.talkerBlocObserver;
  }
}
