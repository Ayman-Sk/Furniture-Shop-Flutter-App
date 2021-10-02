import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';
import '../Data/dummy_data.dart';

class ItemForSale extends StatelessWidget {
  const ItemForSale({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    double price = Provider.of<DummyData>(context, listen: false)
        .getItemPriceFromIndex(index);
    List<String> priceData = [];
    priceData = fixNumber(price);
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        color: Colors.white,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).backgroundColor,
              ),
              margin: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 3,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      Provider.of<DummyData>(context, listen: false)
                          .getItemImageFromIndex(index),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Consumer<DummyData>(
                        builder: (context, temp, _) {
                          return Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Provider.of<DummyData>(context,
                                        listen: false)
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
                                  ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  bottom: 15, right: 15, top: 15, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Provider.of<DummyData>(context, listen: false)
                        .getItemNameFromIndex(index),
                    style: Theme.of(context).textTheme.headline3,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        "by ",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.4,
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
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    width: MediaQuery.of(context).size.width / 3.4,
                    child: Text(
                      Provider.of<DummyData>(context, listen: false)
                          .getItemExplainFromIndex(index),
                      style: Theme.of(context).textTheme.headline5,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$' + priceData.elementAt(0),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Text(
                              priceData.elementAt(1),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Buy"),
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> fixNumber(double number) {
    number = double.parse(number.toStringAsFixed(2));
    List<String> numberData = [];
    int index = '$number'.indexOf('.');
    numberData.add('$number'.substring(0, index + 1));
    if (('$number'.length - 1) - index != 2) {
      numberData.add('$number'['$number'.length - 1] + '0');
    } else {
      numberData.add('$number'.substring(index + 1, '$number'.length));
    }

    return numberData;
  }
}
