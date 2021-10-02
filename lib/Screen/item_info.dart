import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Data/dummy_data.dart';
import '../Widget/recommended_product.dart';
import '../Screen/screen_tail.dart';

class ItemInfo extends StatelessWidget {
  static const route = '/ItemInfo';

  const ItemInfo({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 15, top: 15),
          padding: const EdgeInsets.only(bottom: 3, right: 3, left: 3),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
            color: Theme.of(context).primaryColor,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            padding: const EdgeInsets.only(bottom: 3, right: 3, left: 3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Consumer<DummyData>(
              builder: (context, temp, _) {
                return Provider.of<DummyData>(context, listen: false)
                        .isItemFavoriteFromIndex(index)
                    ? IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.favorite,
                        ),
                        color: Colors.red,
                        onPressed: () {
                          temp.toggleFavoriteOfItemFromIndex(index);
                        },
                      )
                    : IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.favorite_border,
                        ),
                        color: Colors.red,
                        onPressed: () {
                          temp.toggleFavoriteOfItemFromIndex(index);
                        },
                      );
              },
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                Provider.of<DummyData>(context, listen: false)
                    .getItemImageFromIndex(index),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(top: 20),
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 12,
                MediaQuery.of(context).size.width / 12,
                MediaQuery.of(context).size.width / 12,
                0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            Provider.of<DummyData>(context, listen: false)
                                .getItemNameFromIndex(index),
                            style: Theme.of(context).textTheme.headline1,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "by ",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text(
                                Provider.of<DummyData>(context, listen: false)
                                    .getItemMakerFromIndex(index),
                                style: Theme.of(context).textTheme.headline4,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      height: MediaQuery.of(context).size.height / 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 0.5),
                          color: Colors.white),
                      padding: const EdgeInsets.all(7),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_outlined,
                            color: Color(0xFFFFD700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              Provider.of<DummyData>(context)
                                  .getItemRateFromIndex(index)
                                  .toString(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Text(
                    Provider.of<DummyData>(context, listen: false)
                        .getItemExplainFromIndex(index),
                    style: Theme.of(context).textTheme.headline5,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    ' Recommended Products :',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                RecommendedProduct(outIndex: index),
              ],
            ),
          ),
          ScreenTail(index: index)
        ],
      ),
    );
  }
}
