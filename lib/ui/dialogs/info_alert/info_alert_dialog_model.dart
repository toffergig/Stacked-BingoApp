import 'package:bingo_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked/stacked.dart';

class InfoAlertDialogModel extends BaseViewModel {
   String _dropdownValue = list.values.first;

  String get dropdownValue => _dropdownValue;

  void setDropdownValue(String value) {
    _dropdownValue = value;
    notifyListeners();
  }

  void init() {
    // initialize anything here if needed
  }
}
