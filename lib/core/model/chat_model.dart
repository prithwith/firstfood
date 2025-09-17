// ignore_for_file: invalid_annotation_target, unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

class TimestampConverter implements JsonConverter<Timestamp?, Object?> {
  const TimestampConverter();

  @override
  Timestamp? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Timestamp) return json;
    if (json is Map<String, dynamic>) {
      // Firestore might encode timestamp as a map in some cases
      return Timestamp(
        (json['_seconds'] as int?) ?? 0,
        (json['_nanoseconds'] as int?) ?? 0,
      );
    }
    throw ArgumentError('Invalid timestamp format: $json');
  }

  @override
  Object? toJson(Timestamp? object) => object;
}

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    @JsonKey(name: 'senderId') String? senderId,
    @JsonKey(name: 'reciverId') String? reciverId,
    @JsonKey(name: 'message') String? messages,
    @TimestampConverter() @JsonKey(name: 'dateTime') Timestamp? dateTime,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
