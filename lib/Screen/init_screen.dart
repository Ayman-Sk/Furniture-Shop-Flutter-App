import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:motion_tab_bar/MotionTabBarView.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:motion_tab_bar/MotionTabController.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:shop_app/Screen/home_screen.dart';

class InitScreen extends StatefulWidget {
  static const route = '/InitScreen';
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen>
    with SingleTickerProviderStateMixin {
  late MotionTabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        MotionTabController(initialIndex: 0, vsync: this, length: 4);
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   // _tabController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   elevation: 0,
      // ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black87,
              blurRadius: double.maxFinite,
            ),
          ],
        ),
        child: MotionTabBar(
          icons: const [
            Icons.home,
            Icons.shopping_bag,
            Icons.star,
            Icons.person,
          ],
          labels: const [
            "Home",
            "Order",
            "Favorite",
            "Account",
          ],
          initialSelectedTab: "Home",
          tabIconColor: Theme.of(context).hintColor,
          tabSelectedColor: Theme.of(context).focusColor,
          textStyle: Theme.of(context).textTheme.subtitle1,
          onTabItemSelected: (int value) {
            setState(
              () {
                _tabController.index = value;
              },
            );
          },
        ),
      ),
      body: MotionTabBarView(controller: _tabController, children: const [
        HomeScreen(),
        Center(
          child: Text("Order"),
        ),
        Center(
          child: Text("Favorite"),
        ),
        Center(
          child: Text("Personal"),
        ),
      ]),
    );
  }
}
