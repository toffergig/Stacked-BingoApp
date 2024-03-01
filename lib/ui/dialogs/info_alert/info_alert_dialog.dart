import 'package:bingo_app/ui/views/card/card_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'info_alert_dialog_model.dart';

const double _graphicSize = 60;

class InfoAlertDialog extends StackedView<InfoAlertDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InfoAlertDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.title!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        request.description!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        maxLines: 3,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _graphicSize,
                  height: _graphicSize,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6E7B0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(_graphicSize / 2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '💰',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),

            DropdownButtonFormField<String>(
              value: 'L',
              onChanged: (newValue) {
                viewModel.setNewPattern(pattern: newValue ?? 'L');
              },
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              items: [
                'L',
                'Cross',
                'Corners',
                'Blackout',
                'LineVertical',
                'LineHorizontal',
                'LineVerticalAfterRow',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  viewModel.generateBingoCard();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardView(
                          selectedPattern: viewModel.getSelectedPattern,
                          bingoCard: viewModel.bingoCard,
                          bList: viewModel.bList,
                          iList: viewModel.iList,
                          nList: viewModel.nList,
                          gList: viewModel.gList,
                          oList: viewModel.oList),
                    ),
                  );
                },
                child: const Text('Generate card'))
            // GestureDetector(
            //   onTap: () {
            //     viewModel.generateBingoCard();
            //     // viewModel.checkForPattern(pattern: viewModel.selectedPattern);
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => CardView(
            //           bingoCard: viewModel.getBingoCard,
            //           selectedPattern: viewModel.getSelectedPatter,
            //           bList: viewModel.bList,
            //           iList: viewModel.iList,
            //           nList: viewModel.nList,
            //           gList: viewModel.gList,
            //           oList: viewModel.oList,
            //         ),
            //       ),
            //     );
            //   },
            //   child: Container(
            //     height: 50,
            //     width: double.infinity,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: const Text(
            //       'Generate card',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 16,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
