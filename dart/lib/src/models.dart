/// Response models for the Coordinates Are Sea API.

/// API Response wrapper.
class CoordinatesareseaResponse {
  final String status;
  final dynamic error;
  final CoordinatesareseaData? data;

  CoordinatesareseaResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CoordinatesareseaResponse.fromJson(Map<String, dynamic> json) => CoordinatesareseaResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CoordinatesareseaData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Coordinates Are Sea API.

class CoordinatesareseaData {
  double? latitude;
  double? longitude;
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
