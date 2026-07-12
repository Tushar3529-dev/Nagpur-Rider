import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nagpur_rider/config/api_base_helper.dart';
import 'package:nagpur_rider/screens/feed_page/usecases/cancel_order_usecase.dart';

import 'cancel_order_state.dart';

class CancelOrderCubit extends Cubit<CancelOrderState> {
  final CancelOrderUseCase _cancelOrderUseCase;

  CancelOrderCubit({CancelOrderUseCase? cancelOrderUseCase})
    : _cancelOrderUseCase = cancelOrderUseCase ?? CancelOrderUseCase(),
      super(CancelOrderInitial());

  Future<void> cancelOrder({
    required int orderId,
    required String cancellationNote,
  }) async {
    emit(CancelOrderLoading());

    try {
      final response = await _cancelOrderUseCase(
        orderId: orderId,
        cancellationNote: cancellationNote,
      );

      if (response['success'] == true) {
        emit(
          CancelOrderSuccess(
            response['message'] ?? 'Order cancelled successfully',
          ),
        );
      } else {
        emit(
          CancelOrderFailure(response['message'] ?? 'Failed to cancel order'),
        );
      }
    } on ApiException catch (error) {
      emit(CancelOrderFailure(error.toString()));
    } catch (error) {
      emit(CancelOrderFailure('Failed to cancel order'));
    }
  }
}
