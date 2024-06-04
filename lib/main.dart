import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // DATASOURCE + REPOSITORY:
    final videoRepository =
        VideoPostRepository(videosDatasource: LocalVideoDatasource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false, // Para cargar la nextPage sin retraso
          create: (_) => DiscoverProvider(videosRepository: videoRepository)
            ..loadNextPage(),
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
