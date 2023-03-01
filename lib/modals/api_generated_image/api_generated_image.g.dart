// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_generated_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiGeneratedImage _$ApiGeneratedImageFromJson(Map<String, dynamic> json) =>
    ApiGeneratedImage(
      imageCount: json['image_count'] as int?,
      prompt: json['prompt'] as String?,
      status: json['status'] as bool?,
      urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiGeneratedImageToJson(ApiGeneratedImage instance) =>
    <String, dynamic>{
      'image_count': instance.imageCount,
      'prompt': instance.prompt,
      'status': instance.status,
      'urls': instance.urls,
    };
