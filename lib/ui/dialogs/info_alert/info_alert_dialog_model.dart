// ignore_for_file: avoid_print

import 'dart:math';

import 'package:stacked/stacked.dart';

class InfoAlertDialogModel extends BaseViewModel {
  List<List<int>> bingoCard = List.generate(5, (_) => []);

  List<int> bList = [];
  List<int> iList = [];
  List<int> nList = [];
  List<int> gList = [];
  List<int> oList = [];

  String selectedPattern = 'L';

  // getter
  List<int> get getBList => bList;
  List<int> get getIList => iList;
  List<int> get getNList => nList;
  List<int> get getGList => gList;
  List<int> get getOList => oList;
  List<List<int>> get getBingoCard => bingoCard;
  String get getSelectedPattern => selectedPattern;

  void setNewPattern({String pattern = ''}) {
    selectedPattern = pattern;
  }

  void generateBingoCard() {
    for (var i = 0; i < 5; i++) {
      for (var j = 0; j < 5; j++) {
        int value = 0;
        switch (j) {
          case 0:
            value = generateRandomNumberBasedOnGivenRange(bList, 15, 1);
            break;
          case 1:
            value = generateRandomNumberBasedOnGivenRange(iList, 15, 16);
            break;
          case 2:
            if (i == 2 && j == 2) {
              value = 0;
            } else {
              value = generateRandomNumberBasedOnGivenRange(nList, 15, 31);
            }
            break;
          case 3:
            value = generateRandomNumberBasedOnGivenRange(gList, 15, 46);
            break;
          default:
            value = generateRandomNumberBasedOnGivenRange(oList, 15, 61);
        }
        bingoCard[i].add(value);
      }
    }
  }

  int generateRandomNumberBasedOnGivenRange(
      List<int> uniqueValues, int base, int range) {
    Random random = Random();
    int randomValue = (random.nextInt(base) + range);

    while (uniqueValues.contains(randomValue)) {
      randomValue = (random.nextInt(base) + range);
    }

    uniqueValues.add(randomValue);
    return randomValue;
  }

  // List<int> getBlackOut() {
  //   print(selectedPattern);
  //   return [...bList, ...iList, ...nList, ...gList, ...oList];
  // }

  // List<int> getLPattern() {
  //   return [
  //     ...bList,
  //     iList[4],
  //     nList[4],
  //     gList[4],
  //     oList[4],
  //     ...oList,
  //     iList[0],
  //     nList[0],
  //     gList[0]
  //   ];
  // }

  // List<int> getXPattern() {
  //   return [
  //     bList[0],
  //     bList[4],
  //     iList[1],
  //     iList[3],
  //     gList[1],
  //     gList[3],
  //     oList[0],
  //     oList[4],
  //   ];
  // }

  // List<int> getCrossPattern() {
  //   return [
  //     ...nList,
  //     bList[2],
  //     iList[2],
  //     gList[2],
  //     oList[2],
  //   ];
  // }

  // List<int> getLineVerticalPattern() {
  //   return [
  //     ...nList,
  //     bList[2],
  //     iList[2],
  //     gList[2],
  //     oList[2],
  //   ];
  // }
}
