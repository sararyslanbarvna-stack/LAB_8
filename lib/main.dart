import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'constants/colors.dart';
import 'generated/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('kk'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Localization',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,

      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(LocaleKeys.title.tr()),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              LocaleKeys.hello.tr(),
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 10),

            Text(
              LocaleKeys.description.tr(),
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(const Locale('en'));
                  },
                  child: const Text("EN"),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(const Locale('ru'));
                  },
                  child: const Text("RU"),
                ),

                const SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(const Locale('kk'));
                  },
                  child: const Text("KK"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}