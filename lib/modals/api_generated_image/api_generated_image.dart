import 'package:json_annotation/json_annotation.dart';

part 'api_generated_image.g.dart';

@JsonSerializable()
class ApiGeneratedImage {
  @JsonKey(name: 'image_count')
  int? imageCount;
  String? prompt;
  bool? status;
  List<String>? urls;

  ApiGeneratedImage({this.imageCount, this.prompt, this.status, this.urls});

  factory ApiGeneratedImage.fromJson(Map<String, dynamic> json) {
    return _$ApiGeneratedImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiGeneratedImageToJson(this);
}
