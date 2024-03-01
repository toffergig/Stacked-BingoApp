import 'package:stacked/stacked.dart';

class CardViewModel extends BaseViewModel {
  List<int> tappedItems = [];
  List<int> selectedPattern = [];
  List<int> bList = [];
  List<int> iList = [];
  List<int> nList = [];
  List<int> gList = [];
  List<int> oList = [];

  CardViewModel(
      {required this.selectedPattern,
      required this.bList,
      required this.iList,
      required this.nList,
      required this.gList,
      required this.oList});

  void pushTappedItems(int value, List<int> pattern) {
    tappedItems.add(value);
    print('T: $tappedItems');
    print('P: $pattern');

    // blackout
    if (pattern.every((patternIten) => tappedItems.contains(patternIten))) {
      print('You are a winner!');
    }
  }
}
