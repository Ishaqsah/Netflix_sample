import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/downloads_bloc/downloads_bloc.dart';
import 'package:netflixapp/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/domain/core/Di/dependency_injection.dart';
import 'package:netflixapp/presentation/screen_mainpage/widgets/Screen_Main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configueInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getit<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (ctxx) => getit<SearchBloc>(),
          
        ),
          BlocProvider(
          create: (ctxx) => getit<FastLaughBloc>(),
          
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              iconTheme: const IconThemeData(color: Kwhitecolor),
              scaffoldBackgroundColor: backgroundcolors,
              textTheme: const TextTheme(
                  bodyLarge: TextStyle(color: Colors.white),
                  bodyMedium: TextStyle(color: Colors.white))),
          home: ScreenMain()),
    );
  }
}
