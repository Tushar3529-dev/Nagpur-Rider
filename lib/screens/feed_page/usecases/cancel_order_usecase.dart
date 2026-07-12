import 'package:nagpur_rider/screens/feed_page/repo/cancel_order_repo.dart';

class CancelOrderUseCase {
  final CancelOrderRepo _repo;

  CancelOrderUseCase({CancelOrderRepo? repo})
    : _repo = repo ?? CancelOrderRepo();

  Future<Map<String, dynamic>> call({
    required int orderId,
    required String cancellationNote,
  }) {
    return _repo.cancelOrder(
      orderId: orderId,
      cancellationNote: cancellationNote,
    );
  }
}
