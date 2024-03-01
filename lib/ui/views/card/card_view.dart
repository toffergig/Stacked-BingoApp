import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'card_viewmodel.dart';

class CardView extends StackedView<CardViewModel> {
  final String selectedPattern;
  final List<List<int>> bingoCard;
  final List<int> bList;
  final List<int> iList;
  final List<int> nList;
  final List<int> gList;
  final List<int> oList;

  const CardView(
      {Key? key,
      required this.selectedPattern,
      required this.bingoCard,
      required this.bList,
      required this.iList,
      required this.nList,
      required this.gList,
      required this.oList})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bingo Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('B'),
                Text('I'),
                Text('N'),
                Text('G'),
                Text('O'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 25,
                itemBuilder: (context, index) {
                  int i = index ~/ 5;
                  int j = index % 5;
                  return GestureDetector(
                    onTap: () {
                      viewModel.pushTappedItems(bingoCard[i][j]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8.0),
                        color: bingoCard[i][j] < 0 ? Colors.blue : Colors.white,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '${bingoCard[i][j].abs()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color:
                              bingoCard[i][j] < 0 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  @override
  CardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CardViewModel(
          selectedPattern: selectedPattern,
          bingoCard: bingoCard,
          bList: bList,
          iList: iList,
          nList: nList,
          gList: gList,
          oList: oList);
}
