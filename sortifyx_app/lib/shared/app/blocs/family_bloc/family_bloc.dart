import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sortifyx_app/config/injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:sortifyx_app/shared/data/data.dart';
import 'package:sortifyx_app/shared/domain/domain.dart';
import 'package:sortifyx_app/shared/utils/utils.dart';

part 'family_event.dart';
part 'family_state.dart';
part 'family_bloc.freezed.dart';
part 'family_bloc.g.dart';

@singleton
class FamilyBloc extends Bloc<FamilyEvent, FamilyState> with HydratedMixin {
  FamilyBloc() : super(FamilyState.empty()) {
    on<FamilyEvent>((event, emit) async {
      getIt.get<MyTalker>().talker.debug(event.runtimeType);

      switch (event.runtimeType) {
        case _FamilyCreateFamily:
          await _onCreateFamily(event, emit);
          break;
        case _FamilyGetMyFamilies:
          await _onGetMyFamilies(event, emit);
          break;
        case _FamilyGetFamilyById:
          await _onGetFamilyById(event, emit);
          break;
        case _FamilyJoinFamily:
          await _onJoinFamily(event, emit);

          break;
        case _FamilyUpdateFamily:
          await _onUpdateFamily(event, emit);
          break;
      }
    });
  }

  final FamilyRepository _familyRepository = getIt.get();

  Future<void> _onCreateFamily(
      FamilyEvent event, Emitter<FamilyState> emit) async {
    await familyBlocWrapper(() async {
      emit(
        state.copyWith(
          status: FamilyBlocStatus.loading,
          loadingMessage: "Creating your family, please wait.",
        ),
      );
      if (event is! _FamilyCreateFamily) return;
      final res = await _familyRepository.createFamily(event.dto);
      emit(
        state.copyWith(
          status: FamilyBlocStatus.success,
          successMessage: res.message,
          myFamily: res.data ?? FamilyModel.emptyFamily,
        ),
      );
    }, emit);
  }

  Future<void> _onGetMyFamilies(
      FamilyEvent event, Emitter<FamilyState> emit) async {
    await familyBlocWrapper(() async {
      emit(
        state.copyWith(
          status: FamilyBlocStatus.loading,
          loadingMessage: "Getting your families, please wait.",
        ),
      );
      if (event is! _FamilyGetMyFamilies) return;
      final res = await _familyRepository.getMyFamilies();
      emit(
        state.copyWith(
          status: FamilyBlocStatus.success,
          successMessage: res.message,
          myFamilies: res.data ?? [],
        ),
      );
    }, emit);
  }

  Future<void> _onGetFamilyById(
      FamilyEvent event, Emitter<FamilyState> emit) async {
    await familyBlocWrapper(() async {
      emit(
        state.copyWith(
          status: FamilyBlocStatus.loading,
          loadingMessage: "Getting family, please wait.",
        ),
      );
      if (event is! _FamilyGetFamilyById) return;
      final res = await _familyRepository.getFamilyById(event.familyId);
      //TODO: See what state, variable you can create to store this.
      emit(
        state.copyWith(
          status: FamilyBlocStatus.success,
          successMessage: res.message,
          // myFamily: res.data ?? FamilyModel.emptyFamily,
        ),
      );
    }, emit);
  }

  Future<void> _onJoinFamily(
      FamilyEvent event, Emitter<FamilyState> emit) async {
    await familyBlocWrapper(() async {
      emit(
        state.copyWith(
          status: FamilyBlocStatus.loading,
          loadingMessage: "Making a you a part of the family, please wait.",
        ),
      );
      if (event is! _FamilyJoinFamily) return;
      final res = await _familyRepository.joinFamily(event.familyCode);
      emit(
        state.copyWith(
          status: FamilyBlocStatus.success,
          successMessage: res.message,
          myFamily: res.data ?? FamilyModel.emptyFamily,
        ),
      );
    }, emit);
  }

  Future<void> _onUpdateFamily(
      FamilyEvent event, Emitter<FamilyState> emit) async {
    await familyBlocWrapper(() async {
      emit(
        state.copyWith(
          status: FamilyBlocStatus.loading,
          loadingMessage: "Updating your family, please wait.",
        ),
      );
      if (event is! _FamilyUpdateFamily) return;
      final res = await _familyRepository.updateFamily(event.dto);
      emit(
        state.copyWith(
          status: FamilyBlocStatus.success,
          successMessage: res.message,
          myFamily: res.data ?? FamilyModel.emptyFamily,
        ),
      );
    }, emit);
  }

  @override
  FamilyState? fromJson(Map<String, dynamic> json) {
    return FamilyState.fromJson(json['family_bloc']);
  }

  @override
  Map<String, dynamic>? toJson(FamilyState state) {
    return {'family_bloc': state.toJson()};
  }
}
