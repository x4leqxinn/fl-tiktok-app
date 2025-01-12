import 'package:fl_tiktok/config/theme/app_theme.dart';
import 'package:fl_tiktok/presentation/providers/discover_provider.dart';
import 'package:fl_tiktok/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false, create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
          title: 'TikTok',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: DiscoverScreen()),
    );
  }
}
