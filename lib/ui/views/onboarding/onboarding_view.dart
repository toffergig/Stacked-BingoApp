import 'package:bingo_app/components/Button.dart';
import 'package:bingo_app/components/elevated_btn.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'lib/images/bingo.gif',
                width: 300,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: MyButton(onTap: () {}),
              ),
              EleBtn(textbtn: 'Login', onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
