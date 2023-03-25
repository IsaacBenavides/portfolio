import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ios_portfolio/ui/routes/names.dart';
import 'package:ios_portfolio/ui/routes/routes.dart';
import 'package:ios_portfolio/ui/theme/theme.dart';
import 'package:ios_portfolio/utils/main.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: DependencyInjector.dependencies,
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.light(),
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: CustomAppTheme.dark(),
      themeMode: ThemeMode.dark,
      onGenerateRoute: CustomRoutes.routes,
      initialRoute: RoutesNames.splash,
    );
  }
}
