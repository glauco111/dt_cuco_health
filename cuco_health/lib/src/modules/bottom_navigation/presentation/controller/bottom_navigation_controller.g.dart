// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navigation_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BottomNavigationController on _BottomNavigationControllerBase, Store {
  late final _$currentIndexAtom = Atom(
      name: '_BottomNavigationControllerBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_BottomNavigationControllerBaseActionController =
      ActionController(
          name: '_BottomNavigationControllerBase', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$_BottomNavigationControllerBaseActionController
        .startAction(name: '_BottomNavigationControllerBase.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_BottomNavigationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void animatedToIdex(int index) {
    final _$actionInfo = _$_BottomNavigationControllerBaseActionController
        .startAction(name: '_BottomNavigationControllerBase.animatedToIdex');
    try {
      return super.animatedToIdex(index);
    } finally {
      _$_BottomNavigationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
