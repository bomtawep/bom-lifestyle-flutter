import 'package:flutter/material.dart';
import 'package:bom_lifestyle_flutter/widgets/appbar.dart';
import 'package:bom_lifestyle_flutter/screens/home_light.dart';
import 'package:bom_lifestyle_flutter/screens/home_dark.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Default theme mode is ThemeMode.system, which means it will follow
      // the system theme setting. If you want to force light or dark mode
      // please use ThemeMode.light or ThemeMode.dark respectively.

      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: const AppBarWidget(),
        body: _themeMode == ThemeMode.light
            ? const HomeLight()
            : const HomeDark(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _themeMode = _themeMode == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            });
          },
          child: const Icon(Icons.dark_mode),
        ),
      ),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      // themeMode: _themeMode == ThemeMode.light
      //     ? ThemeMode.light
      //     : ThemeMode.dark,
      // home: Scaffold(
      //   appBar: const AppBarWidget(),
      //   body: _themeMode == ThemeMode.light
      //       ? const HomeLight()
      //       : const HomeDark(),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       setState(() {
      //         _themeMode = _themeMode == ThemeMode.light
      //             ? ThemeMode.dark
      //             : ThemeMode.light;
      //       });
      //     },
      //     child: const Icon(Icons.dark_mode),
      //   ),
      // ),
      // debugShowCheckedModeBanner: false,
    );
  }
}