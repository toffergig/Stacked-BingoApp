import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bingotable_viewmodel.dart';

class BingotableView extends StackedView<BingotableViewModel> {
  const BingotableView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BingotableViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  BingotableViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BingotableViewModel();
}
