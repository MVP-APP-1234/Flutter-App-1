// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_generated_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiGeneratedData _$ApiGeneratedDataFromJson(Map<String, dynamic> json) =>
    ApiGeneratedData(
      language: json['language'] as String?,
      status: json['status'] as bool?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$ApiGeneratedDataToJson(ApiGeneratedData instance) =>
    <String, dynamic>{
      'language': instance.language,
      'status': instance.status,
      'text': instance.text,
    };
