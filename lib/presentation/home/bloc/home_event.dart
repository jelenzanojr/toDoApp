part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadData(String? search) = _LoadData;
  const factory HomeEvent.delete(ProductEntityData product) = _Delete;
  const factory HomeEvent.load() = _Load;
}
