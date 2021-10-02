import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import 'Data/dummy_data.dart';
import 'Screen/home_screen.dart';
import 'Screen/init_screen.dart';
import 'Screen/item_info.dart';

void main(List<String> args) => runApp(const ShopApp());

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DummyData(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          // brightness: Brightness.dark,
          backgroundColor: const Color(0xFFF0EFF0),
          primaryColor: const Color(0xFF42375F),
          hintColor: const Color(0xFFacacae),
          focusColor: const Color(0xFFFF3B00),
          // primaryTextTheme: const TextTheme(
          //   headline1: TextStyle(
          //     fontSize: 28.0,
          //     fontWeight: FontWeight.bold,
          //     color: Color(0xFF42375F),
          //   ),
          // ),
          // accentColor: Colors.deepOrange,
          textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF42375F),
            ),
            headline2: TextStyle(
              fontSize: 18.0,
              // fontStyle: FontStyle.normal,
              color: Color(0xFF42375F),
            ),
            headline3: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF42375F),
            ),
            subtitle1: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF42375F),
            ),
            subtitle2: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFF42375F),
            ),
            headline4: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color(0xFFacacae),
            ),
            headline5: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
              // fontWeight: FontWeight.bold,
              color: Color(0xFFacacae),
            ),
            headline6: TextStyle(
              fontSize: 11.0,
              // fontWeight: FontWeight.w500,
              fontWeight: FontWeight.bold,
              color: Color(0xFF42375F),
            ),
            bodyText1: TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.w500,
              fontWeight: FontWeight.bold,
              color: Color(0xFF42375F),
            ),
          ),
        ),
        initialRoute:
            //  TabBarScreen.route,
            //  TabsScreen.route,
            InitScreen.route,
        // HomeScreen.route,
        routes: {
          HomeScreen.route: (context) => const HomeScreen(),
          InitScreen.route: (context) => const InitScreen(),
          ItemInfo.route: (context) => const ItemInfo(
                index: -1,
              ),
        },
      ),
    );
  }
}
