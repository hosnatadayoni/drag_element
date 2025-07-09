import 'package:drag_element/Public/styles.dart';
import 'package:drag_element/UI/Componenets/deContainer.dart';
import 'package:drag_element/UI/Views/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'IRANSanse',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        hoverColor: Colors.transparent,
        primarySwatch: primarySwatch,
      ),
      textDirection: TextDirection.rtl,
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
      // localizationsDelegates: [
      //   const TranslationsDelegate(),
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale.fromSubtags(languageCode: 'fa'),
      //   const Locale.fromSubtags(languageCode: 'ar'),
      // ],
      // localeResolutionCallback: (locale, supportedLocales) {
      //   for (var supportedLocaleLanguage in supportedLocales) {
      //     if (supportedLocaleLanguage.languageCode == locale!.languageCode &&
      //         supportedLocaleLanguage.countryCode == locale.countryCode) {
      //       return supportedLocaleLanguage;
      //     }
      //   }
      //   return supportedLocales.first;
      // },
      initialRoute: '/',
      routes: {
        '/': (context) => TestPage(),
      },
    );
  }
}
