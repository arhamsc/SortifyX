import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class MyTalker {
  static final MyTalker _instance = MyTalker._();

  late Talker _talker;
  late TalkerDioLogger _talkerDioLogger;
  late TalkerBlocObserver _talkerBlocObserver;
  late TalkerRouteObserver _talkerRouteObserver;

  MyTalker._() {
    _talker = TalkerFlutter.init(); //*IMP
    _talkerDioLogger = MyTalkerDioLogger(
      talker: _talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
      ),
    );
    _talkerBlocObserver = TalkerBlocObserver(
      talker: _talker,
      settings: const TalkerBlocLoggerSettings(),
    );
    _talkerRouteObserver = TalkerRouteObserver(_talker);
  }

  static MyTalker get instance {
    return _instance;
  }

  Talker get talker => _talker;
  TalkerDioLogger get talkerDioLogger => _talkerDioLogger;
  TalkerBlocObserver get talkerBlocObserver => _talkerBlocObserver;
  TalkerRouteObserver get talkerRouteObserver => _talkerRouteObserver;

  Future<String?> saveLogsToFile() async {
    //TODO:://Delete files after certain time.
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final logDir = Directory('${appDir.path}/myLogs')
        ..createSync(recursive: true);

      final fileName = DateTime.now().toString().split(" ").join("-time-");

      final logFile = File('${logDir.path}/logs_$fileName.txt');
      final logSink = logFile.openWrite(mode: FileMode.append);

      logSink.writeAll(
        _talker.history.map((e) => e.generateTextMessage()),
        "\n\n-------------\n\n",
      );
      await logSink.close();
      return logFile.path;
    } catch (e) {
      print(e);
    }
    return null;
  }
}

class MyTalkerDioLogger extends TalkerDioLogger {
  MyTalkerDioLogger(
      {required Talker talker, required TalkerDioLoggerSettings settings})
      : super(
          talker: talker,
          settings: settings,
        );
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // FirebaseCrashlytics.instance.recordError(
    //   err.error,
    //   err.stackTrace,
    //   reason: err.message,
    // );
    super.onError(err, handler);
  }
}
