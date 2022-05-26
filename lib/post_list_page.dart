import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'post_page.dart';
import 'isar_provider.dart';

// Postリスト一覧画面用Widget
class PostListPage extends ConsumerWidget {
  const PostListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // postStateNotifirerProviderの状態を使ってカードを作成するのでここで呼び出しておく
    final postState = ref.watch(postStateNotifierProvider);
    
    return Scaffold(
      body: ListView.builder(
        itemCount: postState.titleList.length,//titleリストの長さだけカードを作成する
        itemBuilder: (context, index) {
          final title = postState.titleList[index];//カードのタイトルはpostListの各タイトルを使用
          return Card(
            child: ListTile(
              title: Text(title),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Pressed icon');
          // "push"で新規画面に遷移
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return const PostPage();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
