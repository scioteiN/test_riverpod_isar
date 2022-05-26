import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
part 'post_service_model.freezed.dart';


@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required Isar isar,
    required List<String> titleList,
    required List<DateTime> dateList,
  }) = _PostModel;
}