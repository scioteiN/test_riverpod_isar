import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'isar_provider.dart';

class PostPage extends ConsumerWidget {
  const PostPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // postStateNotifierProviderの状態を捜査するメソッドを使用する準備
    final postStateNotifier = ref.watch(postStateNotifierProvider.notifier);
    String inputText = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト追加'),
      ),
      body: Container(
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // テキスト入力
            TextField(
              // 入力されたテキストの値を受け取る（valueが入力されたテキスト）
              onChanged: (String value) {
                inputText = value;
              },
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  postStateNotifier.add(title:inputText);
                  debugPrint('pressed add list icon');
                  Navigator.of(context).pop();
                },
                child:
                    const Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る
                  Navigator.of(context).pop();
                },
                child: const Text('キャンセル'),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              // リスト削除ボタン
              child: ElevatedButton(
                onPressed: () {
                  postStateNotifier.removeAll();
                  debugPrint('pressed delete list icon');
                  Navigator.of(context).pop();
                },
                child:
                    const Text('リスト削除', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
