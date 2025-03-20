part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.done(
    List<ProductEntityData> contracts, {
    bool? loading,
    Error? error,
    String? message,
  }) = _Done;
}
