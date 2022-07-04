import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'bottom_navigation_controller.g.dart';

class BottomNavigationController = _BottomNavigationControllerBase
    with _$BottomNavigationController;

abstract class _BottomNavigationControllerBase with Store {
  final PageController controller = PageController(initialPage: 0,keepPage: true);

  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int index) => currentIndex = index;

  @action
  void animatedToIdex(int index) {
    currentIndex = index;
    controller.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
