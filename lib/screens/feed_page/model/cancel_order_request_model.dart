class CancelOrderRequestModel {
  final String cancellationNote;

  const CancelOrderRequestModel({this.cancellationNote = ''});

  Map<String, dynamic> toJson() {
    return {'cancellation_note': cancellationNote};
  }
}
