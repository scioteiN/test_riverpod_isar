import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'post.dart';
import 'post_list_page.dart';
import 'isar_provider.dart';

Future<void> main() async {
  // Isarデータベースを開く===========================================
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();//chromeでエラー?
  Isar isar = await Isar.open(
      schemas: [PostSchema], directory: dir.path, inspector: true);
  // ==============================================================
  return runApp(MyApp(
    isar: isar,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isar}) : super(key: key);
  final Isar isar;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        // Providerが使用するインスタンスを指定する
        // ここでisarのインスタンスを渡すことでプロバイダで使えるようになる
        isarProvider.overrideWithValue(isar),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const PostListPage(),
      ),
    );
  }
}
