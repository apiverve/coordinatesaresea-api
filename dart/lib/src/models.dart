/// Response models for the Coordinates Are Sea API.

/// API Response wrapper.
class CoordinatesareseaResponse {
  final String status;
  final dynamic error;
  final CoordinatesareseaData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CoordinatesareseaResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CoordinatesareseaResponse.fromJson(Map<String, dynamic> json) => CoordinatesareseaResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CoordinatesareseaData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Coordinates Are Sea API.

class CoordinatesareseaData {
  num? latitude;
  num? longitude;
  bool? isSea;

  CoordinatesareseaData({
    this.latitude,
    this.longitude,
    this.isSea,
  });

  factory CoordinatesareseaData.fromJson(Map<String, dynamic> json) => CoordinatesareseaData(
      latitude: json['latitude'],
      longitude: json['longitude'],
      isSea: json['isSea'],
    );
}

class CoordinatesareseaRequest {
  double lat;
  double lon;

  CoordinatesareseaRequest({
    required this.lat,
    required this.lon,
  });

  Map<String, dynamic> toJson() => {
      'lat': lat,
      'lon': lon,
    };
}
