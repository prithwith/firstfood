import 'dart:convert';
import 'package:fastfood/core/utils/autocomplete_prediction.dart';

/// The Autocomplete response contains place predictions and status
class PlaceAutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;
  final String? errorMessage;

  PlaceAutocompleteResponse({this.status, this.predictions, this.errorMessage});

  factory PlaceAutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return PlaceAutocompleteResponse(
      status: json['status'] as String?,
      errorMessage: json['error_message'] as String?,
      // ignore: prefer_null_aware_operators
      predictions:
          json['predictions']
              ?.map<AutocompletePrediction>(
                (json) => AutocompletePrediction.fromJson(json),
              )
              .toList(),
    );
  }

  static PlaceAutocompleteResponse parseAutocompleteResult(
    String responseBody,
  ) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();

    return PlaceAutocompleteResponse.fromJson(parsed);
  }
}
