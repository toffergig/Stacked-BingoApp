import 'package:bingo_app/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:bingo_app/app/app.dialogs.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();


  // String get counterLabel => 'Counter is: $_counter';

  // int _counter = 0;

  // void incrementCounter() {
  //   _counter++;
  //   rebuildUi();
  // }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Choose a Winning Pattern!',
      description: 'Get a chance to win and go BINGO!',
    );
  }

}