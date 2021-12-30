import 'package:fluttercommerce/features/common/state/result_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network/network.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(Idle()) ResultState<List<ProductModel>> dealOfTheDay,
    @Default(Idle()) ResultState<List<ProductModel>> onSale,
    @Default(Idle()) ResultState<List<ProductModel>> topProducts,
  }) = _DashboardState;
}
