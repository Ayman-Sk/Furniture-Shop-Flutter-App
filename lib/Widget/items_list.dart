import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Widget/item_for_sale.dart';
import '../Data/dummy_data.dart';
import '../Screen/item_info.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: Provider.of<DummyData>(context).getItemsNumber(),
      itemBuilder: (BuildContext context, int index) {
        if (Provider.of<DummyData>(context)
            .isIteamAtTheSameType(index, title)) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ItemInfo(
                  index: index,
                ),
              ),
            ),
            child: ItemForSale(
              index: index,
            ),
          );
        }
        return Container();
      },
    );
  }
}
