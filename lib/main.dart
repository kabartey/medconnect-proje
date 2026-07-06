import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'views/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

      runApp(
          EasyLocalization(
                supportedLocales: const [Locale('en'), Locale('tr')],
                      path: 'assets/translations',
                            fallbackLocale: const Locale('tr'),
                                  child: const MedConnectApp(),
                                      ),
                                        );
                                        }

                                        class MedConnectApp extends StatelessWidget {
                                          const MedConnectApp({super.key});

                                            @override
                                              Widget build(BuildContext context) {
                                                  return MaterialApp(
                                                        debugShowCheckedModeBanner: false,
                                                              title: 'MedConnect',
                                                                    localizationsDelegates: context.localizationDelegates,
                                                                          supportedLocales: context.supportedLocales,
                                                                                locale: context.locale,
                                                                                      theme: ThemeData(
                                                                                              useMaterial3: true,
                                                                                                      brightness: Brightness.dark,
                                                                                                              scaffoldBackgroundColor: const Color(0xFF09090B), // zinc-950
                                                                                                                      colorScheme: const ColorScheme.dark(
                                                                                                                                primary: Colors.white,
                                                                                                                                          onPrimary: Color(0xFF09090B),
                                                                                                                                                    secondary: Color(0xFF27272A), // zinc-800
                                                                                                                                                              surface: Color(0xFF18181B), // zinc-900
                                                                                                                                                                        onSurface: Colors.white,
                                                                                                                                                                                  outline: Color(0xFF27272A),
                                                                                                                                                                                          ),
                                                                                                                                                                                                  fontFamily: 'Inter',
                                                                                                                                                                                                          appBarTheme: const AppBarTheme(
                                                                                                                                                                                                                    backgroundColor: Color(0xFF18181B),
                                                                                                                                                                                                                              elevation: 0,
                                                                                                                                                                                                                                        scrolledUnderElevation: 0,
                                                                                                                                                                                                                                                  centerTitle: true,
                                                                                                                                                                                                                                                            titleTextStyle: TextStyle(
                                                                                                                                                                                                                                                                        fontSize: 16,
                                                                                                                                                                                                                                                                                    fontWeight: FontWeight.bold,
                                                                                                                                                                                                                                                                                                letterSpacing: 1.5,
                                                                                                                                                                                                                                                                                                            color: Colors.white,
                                                                                                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                          home: const HomeView(),
                                                                                                                                                                                                                                                                                                                                              );
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                }