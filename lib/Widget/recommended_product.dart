import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop_app/Screen/item_info.dart';

import '../Data/dummy_data.dart';

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({Key? key, required this.outIndex})
      : super(key: key);

  final int outIndex;

  @override
  Widget build(BuildContext context) {
    String title =
        Provider.of<DummyData>(context).getItemTypeFromIndex(outIndex);
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: Provider.of<DummyData>(context).getItemsNumber() - 1,
        itemBuilder: (context, index) {
          if (index != outIndex &&
              Provider.of<DummyData>(context)
                  .isIteamAtTheSameType(index, title)) {
            return InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemInfo(
                    index: index,
                  ),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height / 50,
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Theme.of(context).backgroundColor,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    Provider.of<DummyData>(context, listen: false)
                        .getItemImageFromIndex(index),
                  ),
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
