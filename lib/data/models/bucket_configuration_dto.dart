import 'package:vikunja_app/data/models/dto.dart';
import 'package:vikunja_app/data/models/filter_dto.dart';
import 'package:vikunja_app/domain/entities/bucket_configuration.dart';

class BucketConfigurationDto extends Dto<BucketConfiguration> {
  final String title;
  final FilterDto? filter;

  BucketConfigurationDto(this.title, this.filter);

  BucketConfigurationDto.fromJson(Map<String, dynamic> json)
    : title = json['标题'],
      filter = json['筛选'] != null && json['筛选'] is Map<String, dynamic>
          ? FilterDto.fromJson(json['筛选'])
          : null;

  Map<String, dynamic> toJSON() => {'标题': title, '筛选': filter?.toJSON()};

  @override
  BucketConfiguration toDomain() =>
      BucketConfiguration(title, filter?.toDomain());

  static BucketConfigurationDto fromDomain(BucketConfiguration p) =>
      BucketConfigurationDto(
        p.title,
        p.filter != null ? FilterDto.fromDomain(p.filter!) : null,
      );
}
