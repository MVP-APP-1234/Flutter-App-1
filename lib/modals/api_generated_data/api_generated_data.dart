import 'package:json_annotation/json_annotation.dart';

part 'api_generated_data.g.dart';

@JsonSerializable()
class ApiGeneratedData {
  String? language;
  bool? status;
  String? text;

  ApiGeneratedData({this.language, this.status, this.text});

  factory ApiGeneratedData.fromJson(Map<String, dynamic> json) {
    return _$ApiGeneratedDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiGeneratedDataToJson(this);
}
