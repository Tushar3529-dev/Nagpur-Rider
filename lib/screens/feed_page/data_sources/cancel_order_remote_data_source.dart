import 'package:nagpur_rider/config/api_base_helper.dart';
import 'package:nagpur_rider/config/api_routes.dart';
import 'package:nagpur_rider/screens/feed_page/model/cancel_order_request_model.dart';

class CancelOrderRemoteDataSource {
  Future<Map<String, dynamic>> cancelOrder({
    required int orderId,
    required CancelOrderRequestModel request,
  }) async {
    return ApiBaseHelper.post(
      url: '$cancelOrderApi/$orderId/cancel',
      useAuthToken: true,
      body: request.toJson(),
    );
  }
}
