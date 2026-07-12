import 'package:nagpur_rider/screens/feed_page/data_sources/cancel_order_remote_data_source.dart';
import 'package:nagpur_rider/screens/feed_page/model/cancel_order_request_model.dart';

class CancelOrderRepo {
  final CancelOrderRemoteDataSource _remoteDataSource;

  CancelOrderRepo({CancelOrderRemoteDataSource? remoteDataSource})
    : _remoteDataSource = remoteDataSource ?? CancelOrderRemoteDataSource();

  Future<Map<String, dynamic>> cancelOrder({
    required int orderId,
    required String cancellationNote,
  }) {
    return _remoteDataSource.cancelOrder(
      orderId: orderId,
      request: CancelOrderRequestModel(cancellationNote: cancellationNote),
    );
  }
}
