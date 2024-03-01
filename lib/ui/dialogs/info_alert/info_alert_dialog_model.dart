import 'dart:math';

import 'package:stacked/stacked.dart';

class InfoAlertDialogModel extends BaseViewModel {
  List<List<int>> bingoCard = List.generate(5, (_) => []);

  List<int> bList = [];
  List<int> iList = [];
  List<int> nList = [];
  List<int> gList = [];
  List<int> oList = [];
  List<int> selectedPatter = [];

  String selectedPattern = 'L';

  // getter

  List<int> get getBList => bList;
  List<int> get getIList => iList;
  List<int> get getNList => nList;
  List<int> get getGList => gList;
  List<int> get getOList => oList;
  List<List<int>> get getBingoCard => bingoCard;
  List<int> get getSelectedPatter => selectedPatter;

  void selectPattern({String pattern = ''}) {
    selectedPattern = pattern;
  }

  void checkForPattern({String pattern = ''}) {}

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
    generatePatterValues();
  }

  void generatePatterValues() {
    switch (selectedPattern) {
      case 'L':
        selectedPatter = getLPattern();
        // call for L patter generator
        break;
      case 'X':
        // call for L patter generator
        break;
      case 'Cross':
        // call for Cross patter generator
        break;
      case 'Corners':
        // call for Corners patter generator
        break;
      case 'Blackout':
        selectedPatter = getBlackOut();
        // call for Blackout patter generator
        break;
      case 'LineVertical':
        // call for LineVertical patter generator
        break;
      case 'LineHorizontal':
        // call for LineHorizontal patter generator
        break;
      default:
      // call for LineVerticalAfterRow patter generator
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

  List<int> getBlackOut() {
    print(selectedPattern);
    return [...bList, ...iList, ...nList, ...gList, ...oList];
  }

  List<int> getLPattern() {
    print(selectedPattern);
    // return [...bList,iList[4],nList[4],gList[4],oList[4] || ...oList,bList[0],iList[0]];
    return [
      ...bList,
      iList[4],
      nList[4],
      gList[4],
      oList[4],
      ...oList,
      iList[0],
      nList[0],
      gList[0]
    ];
  }
}
