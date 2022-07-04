import 'package:flutter/cupertino.dart';

enum PageState {
  start,
  loading,
  success,
  empty,
  error,
}

extension StateExtension on PageState {
  bool get isStart => this == PageState.start;
  bool get isLoading => this == PageState.loading;
  bool get isSuccess => this == PageState.success;
  bool get isError => this == PageState.error;
  bool get isEmpty => this == PageState.empty;
}

