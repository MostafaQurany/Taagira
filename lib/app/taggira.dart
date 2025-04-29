import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/routes/app_router.dart';
import 'package:taggira/core/theme/app_theme.dart';
import 'package:taggira/generated/l10n.dart';

class Taagira extends StatelessWidget {
  const Taagira({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',

          //? App Theme
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,

          //? localization
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,

          //? routing
          routerDelegate: AppRouter.router.routerDelegate,
          // routerConfig: AppRouter.router,
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          routeInformationParser: AppRouter.router.routeInformationParser,
        );
      },
    );
  }
}
