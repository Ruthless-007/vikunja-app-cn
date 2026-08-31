import 'package:vikunja_app/data/models/label_dto.dart';

class LabelTaskBulkDto {
  final List<LabelDto> labels;

  LabelTaskBulkDto({required this.labels});

  LabelTaskBulkDto.fromJson(Map<String, dynamic> json)
    : labels = json['标签']?.map((label) => LabelDto.fromJson(label));

  Map<String, List<Map<String, Object?>>> toJSON() => {
    '标签': labels.map((label) => label.toJSON()).toList(),
  };
}
