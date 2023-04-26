import 'package:auto_route/auto_route.dart';
import 'package:flutter_online_course/core/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [

    AutoRoute(page: RegisterRoute.page, path: '/registerRoute'),
    AutoRoute(page: LoginRoute.page, path: '/loginScreen'),
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: MovieDetailRoute.page, path: '/movieDetailRoute'),
    AutoRoute(page: MovieSearchRoute.page,path: '/movieSearchRoute'),
    AutoRoute(page: MovieHomeRoute.page,path: '/movieHomeRoute'),
    AutoRoute(page: BookmarkedMovieRoute.page,path: '/bookmarkedMovieRoute'),
  ];
}
