// lib/data/models/announcement_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
abstract class AnnouncementModel with _$AnnouncementModel {
  const factory AnnouncementModel({
    required int id,
    required String title,
    @JsonKey(name: 'sub_title') required String subtitle,
    @JsonKey(name: 'image_url') required String imageUrl,
    required DateTime datetime,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) => _$AnnouncementModelFromJson(json);
}
