/// Response models for the Text Lemmatizer API.

/// API Response wrapper.
class LemmatizerResponse {
  final String status;
  final dynamic error;
  final LemmatizerData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LemmatizerResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LemmatizerResponse.fromJson(Map<String, dynamic> json) => LemmatizerResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LemmatizerData.fromJson(json['data']) : null,
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

/// Response data for the Text Lemmatizer API.

class LemmatizerData {
  num? found;
  LemmatizerDataLemmas? lemmas;

  LemmatizerData({
    this.found,
    this.lemmas,
  });

  factory LemmatizerData.fromJson(Map<String, dynamic> json) => LemmatizerData(
      found: json['found'],
      lemmas: json['lemmas'] != null ? LemmatizerDataLemmas.fromJson(json['lemmas']) : null,
    );
}

class LemmatizerDataLemmas {
  num? cat;
  num? ran;
  num? door;

  LemmatizerDataLemmas({
    this.cat,
    this.ran,
    this.door,
  });

  factory LemmatizerDataLemmas.fromJson(Map<String, dynamic> json) => LemmatizerDataLemmas(
      cat: json['cat'],
      ran: json['ran'],
      door: json['door'],
    );
}

class LemmatizerRequest {
  String text;

  LemmatizerRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
