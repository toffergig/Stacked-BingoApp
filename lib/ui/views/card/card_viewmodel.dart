// ignore_for_file: avoid_print

import 'package:stacked/stacked.dart';

class CardViewModel extends BaseViewModel {
  String selectedPattern = 'L';
  List<List<int>> bingoCard = [];
  List<int> tappedItems = [];
  List<int> selectedPatternValues = [];
  List<int> bList = [];
  List<int> iList = [];
  List<int> nList = [];
  List<int> gList = [];
  List<int> oList = [];

  CardViewModel(
      {required this.selectedPattern,
      required this.bingoCard,
      required this.bList,
      required this.iList,
      required this.nList,
      required this.gList,
      required this.oList}) {
    // generate patter values

    generatePatterValues();
    checkForWinningPattern();
  }

  void pushTappedItems(int value) {
    tappedItems.add(value);
    print('T: $tappedItems');
  }

  checkForWinningPattern() {
    checkBlackoutPattern();
  }

  void generatePatterValues() {
    switch (selectedPattern) {
      case 'L':
        checkLPattern();
        // call for L patter generator
        break;
      case 'X':
        // call for L patter generator
        selectedPatternValues = getXPattern();
        break;
      case 'Cross':
        selectedPatternValues = getCrossPattern();
        // call for Cross patter generator
        break;
      case 'Corners':
        checkCornerPattern();
        // call for Corners patter generator
        break;
      case 'Blackout':
        selectedPatternValues = getBlackOut();
        // call for Blackout patter generator
        break;
      case 'LineVertical':
        checkLineVerticalPattern();
        // call for LineVertical patter generator
        break;
      default:
        checkLineHorizontalPattern();
      // call for LineHorizontal patter generator
    }
  }

  void checkLPattern() {
    // L
    if ([...bList, iList[0], nList[0], gList[0], oList[0]]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        [...bList, iList[4], nList[4], gList[4], oList[4]]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        [...oList, bList[0], iList[0], nList[0], gList[0]]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        [...oList, bList[4], iList[4], nList[4], gList[4]]
            .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of L binggo!');
    }
  }

  void checkXPattern() {
    // X
    if (getXPattern()
        .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of X binggo!');
    }
  }

  void checkCrossPattern() {
    // Cross
    if (getCrossPattern()
        .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of Cross binggo!');
    }
  }

  void checkCornerPattern() {
    if (
        // outer corner
        [bList[0], bList[1], iList[0]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [bList[3], bList[4], iList[4]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [gList[0], oList[0], oList[1]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [gList[4], oList[4], oList[3]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            // inner corner
            [iList[1], iList[2], nList[1]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [iList[2], iList[3], nList[3]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [gList[2], gList[3], nList[3]]
                .every((patternItem) => tappedItems.contains(patternItem)) ||
            [gList[1], gList[2], nList[1]]
                .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of corner binggo!');
    }
  }

  void checkBlackoutPattern() {
    // blackout
    if (selectedPatternValues
        .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of blackout binggo!');
    }
  }

  void checkLineVerticalPattern() {
    // vertical
    if (bList.every((patternItem) => tappedItems.contains(patternItem)) ||
        iList.every((patternItem) => tappedItems.contains(patternItem)) ||
        nList.every((patternItem) => tappedItems.contains(patternItem)) ||
        gList.every((patternItem) => tappedItems.contains(patternItem)) ||
        oList.every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of veritcal binggo!');
    }
  }

  void checkLineHorizontalPattern() {
    // horinzontal
    if (bingoCard[0]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        bingoCard[1]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        bingoCard[2]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        bingoCard[3]
            .every((patternItem) => tappedItems.contains(patternItem)) ||
        bingoCard[4]
            .every((patternItem) => tappedItems.contains(patternItem))) {
      print('You are a winner of horizontal binggo!');
    }
  }

  List<int> getXPattern() {
    return [
      bList[0],
      bList[4],
      iList[1],
      iList[3],
      gList[1],
      gList[3],
      oList[0],
      oList[4],
    ];
  }

  List<int> getCrossPattern() {
    return [
      ...nList,
      bList[2],
      iList[2],
      gList[2],
      oList[2],
    ];
  }

  List<int> getCornerPattern() {
    return [
      bList[0],
      bList[4],
      iList[1],
      iList[3],
      gList[1],
      gList[3],
      oList[0],
      oList[4],
    ];
  }

  List<int> getBlackOut() {
    return [...bList, ...iList, ...nList, ...gList, ...oList];
  }
}
