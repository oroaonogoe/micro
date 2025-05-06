import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:micro/routes.dart';
import 'package:micro/theme/app_theme.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(ProviderScope(child: Micro()));
}

class Micro extends ConsumerWidget {
  const Micro({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // routes provider
    final appRouter = ref.watch(appRouterProvider);

    return SafeArea(
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Micro',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
