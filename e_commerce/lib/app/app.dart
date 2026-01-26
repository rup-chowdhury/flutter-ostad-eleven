import 'package:e_commerce/app/app_routes.dart';
import 'package:e_commerce/app/app_theme.dart';
import 'package:e_commerce/app/providers/language_provider.dart';
import 'package:e_commerce/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class CraftyBayApp extends StatefulWidget {
  const CraftyBayApp({super.key});

  @override
  State<CraftyBayApp> createState() => _CraftyBayAppState();
}

class _CraftyBayAppState extends State<CraftyBayApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child) {
          return MaterialApp(
            // router
            // theme
            initialRoute: SplashScreen.name,
            onGenerateRoute: AppRoutes.routes,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.light,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en'),
              Locale('bn'),
            ],
            locale: languageProvider.currentLocale,

          );
        }
      ),
    );
  }
}
