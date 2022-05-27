import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post.dart';
import 'post_service_model.dart';

// ダミーのProviderを用意する
final isarProvider = Provider<Isar>((_) {
  debugPrint('run isarprovider');
  throw throw UnimplementedError("アプリケーション起動時にmainでawaitして生成したインスタンスを使用する");
});

class PostStateNotifier extends StateNotifier<PostModel> {
  PostStateNotifier(this.isar)
      : super(PostModel(
          isar: isar,
          titleList: isar.posts.where().titleProperty().findAllSync(),
          dateList: isar.posts.where().dateProperty().findAllSync(),
        ));
  final Isar isar;
  
  //データベースからの状態の読み込み
  Future<void> _resetPostState() async {
    List<String> titleList = await isar.posts.where().titleProperty().findAll();
    List<DateTime> dateList = await isar.posts.where().dateProperty().findAll();
    state = state.copyWith(
      titleList: titleList,
      dateList: dateList,
    );
  }
  //データベースに追加
  Future<void> add({required String title, String? avatarUri}) async {
    final post = Post()
      ..title = title
      ..date = DateTime.now();
    int val = await isar.writeTxn((isar) => isar.posts.put(post));
    _resetPostState();
  }
  //データベースの中身を全て削除
  Future<void> removeAll() async {
    await isar.writeTxn((isar) => isar.posts.clear());
    _resetPostState();
  }
}

final postStateNotifierProvider =
    StateNotifierProvider<PostStateNotifier, PostModel>((ref) {
  return PostStateNotifier(ref.watch(isarProvider));
});

