import 'package:flutter/material.dart';
import 'package:bingo_app/ui/common/app_colors.dart';
import 'package:bingo_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'info_alert_dialog_model.dart';

const double _graphicSize = 60;
const Map<String, String> list = {
  'Black Out': 'BlackOut',
  'X': 'X',
  'Cross': 'Cross',
  'L': 'L',
  'Corners': 'Corners',
  'Line Vertical': 'LineVertical',
  'Line Horizontal': 'LineHorizontal',
};

class InfoAlertDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const InfoAlertDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InfoAlertDialogModel>.reactive(
      viewModelBuilder: () => InfoAlertDialogModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, model, child) => Dialog(
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
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        verticalSpaceTiny,
                        Text(
                          request.description!,
                          style: const TextStyle(fontSize: 14, color: kcMediumGrey),
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
             Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    DropdownMenu<String>(
      initialSelection: model.dropdownValue,
      onSelected: (String? value) {
        model.setDropdownValue(value!);
      },
      width: 200,
      dropdownMenuEntries: list.entries.map<DropdownMenuEntry<String>>((entry) {
        final key = entry.key;
        final value = entry.value;
        return DropdownMenuEntry<String>(value: value, label: key);
      }).toList(),
    ),
  ],
),
              verticalSpaceMedium,
              GestureDetector(
                onTap: () => completer(DialogResponse(confirmed: true)),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Got it',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
