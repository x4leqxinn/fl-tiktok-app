import 'package:fl_tiktok/config/theme/app_theme.dart';
import 'package:fl_tiktok/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:fl_tiktok/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:fl_tiktok/presentation/providers/discover_provider.dart';
import 'package:fl_tiktok/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videPostRepository =
        VideoPostRepositoryImpl(videosDatasource: LocalVideoDatasourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videosRepository: videPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
          title: 'TikTok',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: DiscoverScreen()),
    );
  }
}
