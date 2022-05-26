import 'package:isar/isar.dart';

part 'post.g.dart';

@Collection()
class Post {
  @Id()
  int id = Isar.autoIncrement;

  late String title;

  late DateTime date;
}