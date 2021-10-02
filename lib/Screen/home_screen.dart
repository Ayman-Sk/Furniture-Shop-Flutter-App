import 'package:flutter/material.dart';

import '../Widget/items_list.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final serchController = TextEditingController();
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        // title: const Text('Shop App'),
        elevation: 0,
      ),
      body: GestureDetector(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best Furniture",
                  style: Theme.of(context).textTheme.headline1),
              Text("Perfect Choice!",
                  style: Theme.of(context).textTheme.headline2),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 7.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.45,
                      child: TextField(
                        controller: serchController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            color: Theme.of(context).primaryColor,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.format_list_bulleted_rounded),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                isScrollable: true,
                unselectedLabelColor: Theme.of(context).primaryColor,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
                tabs: const [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Chair',
                  ),
                  Tab(
                    text: 'Table',
                  ),
                  Tab(
                    text: 'Lamp',
                  ),
                  Tab(
                    text: 'Floor',
                  ),
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: Theme.of(context).textTheme.subtitle2,
              ),
              Expanded(
                child: TabBarView(
                  children: const [
                    // Center(child: Text('All')),
                    ItemsList(title: 'All'),
                    ItemsList(title: 'Chair'),
                    ItemsList(title: 'Table'),
                    ItemsList(title: 'Lamp'),
                    ItemsList(title: 'Floor'),
                  ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
      ),
    );
  }
}
// Widget buildTabs() {
//   TabController _tabController;
//   _tabController = TabController(length: 3, vsync: this);
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       TabBar(
//         unselectedLabelColor: Colors.red,
//         indicator: BoxDecoration(
//           borderRadius: BorderRadius.circular(50),
//           color: Colors.redAccent,
//         ),
//         tabs: const [
//           Tab(
//             text: '1st tab',
//           ),
//           Tab(
//             text: '2 nd tab',
//           ),
//           Tab(
//             text: '3d tab',
//           )
//         ],
//         controller: _tabController,
//         indicatorSize: TabBarIndicatorSize.tab,
//       ),
//       Expanded(
//         child: TabBarView(
//           children: const [
//             Center(child: Text('people')),
//             Text('Person'),
//             Text('Ayman')
//           ],
//           controller: _tabController,
//         ),
//       ),
//     ],
//   );
// }


// https://newbedev.com/flutter-tabbar-without-appbar