import 'package:cuco_health/src/modules/friends/domain/usecases/get_friends_usecase.dart';
import 'package:cuco_health/src/modules/friends/presentation/controller/friends_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'core/network/dio_config.dart';
import 'core/theme/cuco_themes.dart';
import 'core/theme/store/theme_store.dart';
import 'modules/bottom_navigation/presentation/controller/bottom_navigation_controller.dart';
import 'modules/bottom_navigation/presentation/pages/page_view.dart';
import 'modules/friends/data/data_source/friends_data_source.dart';
import 'modules/friends/data/friends_repository.dart';
import 'modules/perfil/data/data_source/perfil_data_source.dart';
import 'modules/perfil/data/perfil_repository.dart';
import 'modules/perfil/domain/usecases/get_person_usecase.dart';
import 'modules/perfil/presentation/controller/perfil_controller.dart';
import 'modules/splash/presentation/controller/splash_controller.dart';
import 'modules/splash/presentation/page/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    final ThemeStore _themeStore = context.read<ThemeStore>();
    Dio dio = Dio();
    DioConfig(dio: dio).init();

    return Observer(builder: (context) {
      return MultiProvider(
          providers: [
            // Core
            Provider(create: (_) => dio),
           
            // Data sources
            Provider(
                create: (context) => PerfilDataSource(dio: context.read())),
            Provider(
                create: (context) => FriendsDataSource(dio: context.read())),
          
            // Repositories
            Provider(
                create: (context) =>
                    FriendsRepository(context.read<FriendsDataSource>())),
            Provider(
                create: (context) =>
                    PerfilRepository(context.read<PerfilDataSource>())),
          
            // Usecases
            Provider(
                create: (context) =>
                    GetFriendsUsecase(context.read<FriendsRepository>())),
            Provider(
                create: (context) =>
                    GetPersonUsecase(context.read<PerfilRepository>())),
           
            // Controllers
            Provider(create: (_) => SplashController()),
            Provider(create: (_) => BottomNavigationController()),

            Provider(
                create: (context) => PerfilController(
                    getPerson: context.read())),
            Provider(
                create: (context) => FriendsController(
                    getFriends: context.read())),
          ],
          child: MaterialApp(
              title: 'Cuco Health',
              theme: CucoThemes.light,
              darkTheme: CucoThemes.dark,
              debugShowCheckedModeBanner: false,
              themeMode: _themeStore.themeMode,
              routes: {
                '/': (context) => const SplashPage(),
                '/home': (context) => const CucoPageView(),
              },
              initialRoute: '/'));
    });
  }
}
