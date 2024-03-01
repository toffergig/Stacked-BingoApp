// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bingo_app/ui/views/card/card_view.dart' as _i5;
import 'package:bingo_app/ui/views/home/home_view.dart' as _i2;
import 'package:bingo_app/ui/views/onboarding/onboarding_view.dart' as _i4;
import 'package:bingo_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const onboardingView = '/onboarding-view';

  static const cardView = '/card-view';

  static const all = <String>{
    homeView,
    startupView,
    onboardingView,
    cardView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i4.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.cardView,
      page: _i5.CardView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.OnboardingView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.OnboardingView(),
        settings: data,
      );
    },
    _i5.CardView: (data) {
      final args = data.getArgs<CardViewArguments>(nullOk: false);
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.CardView(
            key: args.key,
            bingoCard: args.bingoCard,
            selectedPattern: args.selectedPattern,
            bList: args.bList,
            iList: args.iList,
            nList: args.nList,
            gList: args.gList,
            oList: args.oList),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class CardViewArguments {
  const CardViewArguments({
    this.key,
    required this.bingoCard,
    required this.selectedPattern,
    required this.bList,
    required this.iList,
    required this.nList,
    required this.gList,
    required this.oList,
  });

  final _i6.Key? key;

  final List<List<int>> bingoCard;

  final List<int> selectedPattern;

  final List<int> bList;

  final List<int> iList;

  final List<int> nList;

  final List<int> gList;

  final List<int> oList;

  @override
  String toString() {
    return '{"key": "$key", "bingoCard": "$bingoCard", "selectedPattern": "$selectedPattern", "bList": "$bList", "iList": "$iList", "nList": "$nList", "gList": "$gList", "oList": "$oList"}';
  }

  @override
  bool operator ==(covariant CardViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.bingoCard == bingoCard &&
        other.selectedPattern == selectedPattern &&
        other.bList == bList &&
        other.iList == iList &&
        other.nList == nList &&
        other.gList == gList &&
        other.oList == oList;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        bingoCard.hashCode ^
        selectedPattern.hashCode ^
        bList.hashCode ^
        iList.hashCode ^
        nList.hashCode ^
        gList.hashCode ^
        oList.hashCode;
  }
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToCardView({
    _i6.Key? key,
    required List<List<int>> bingoCard,
    required List<int> selectedPattern,
    required List<int> bList,
    required List<int> iList,
    required List<int> nList,
    required List<int> gList,
    required List<int> oList,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.cardView,
        arguments: CardViewArguments(
            key: key,
            bingoCard: bingoCard,
            selectedPattern: selectedPattern,
            bList: bList,
            iList: iList,
            nList: nList,
            gList: gList,
            oList: oList),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithCardView({
    _i6.Key? key,
    required List<List<int>> bingoCard,
    required List<int> selectedPattern,
    required List<int> bList,
    required List<int> iList,
    required List<int> nList,
    required List<int> gList,
    required List<int> oList,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.cardView,
        arguments: CardViewArguments(
            key: key,
            bingoCard: bingoCard,
            selectedPattern: selectedPattern,
            bList: bList,
            iList: iList,
            nList: nList,
            gList: gList,
            oList: oList),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
