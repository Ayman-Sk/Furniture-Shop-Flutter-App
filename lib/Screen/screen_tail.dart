import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../Data/dummy_data.dart';

class ScreenTail extends StatelessWidget {
  const ScreenTail({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    double price = Provider.of<DummyData>(context, listen: false)
        .getItemPriceFromIndex(index);
    List<String> priceData = [];
    priceData = fixNumber(price);
    return Expanded(
      flex: 3,
      child: Container(
        height: MediaQuery.of(context).size.height / 9,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.grey, width: 0.8)),
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '\$' + priceData.elementAt(0),
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    priceData.elementAt(1),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Buy now"),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).focusColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
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
