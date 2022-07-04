// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeStore on _ThemeStoreBase, Store {
  Computed<ThemeMode>? _$themeModeComputed;

  @override
  ThemeMode get themeMode =>
      (_$themeModeComputed ??= Computed<ThemeMode>(() => super.themeMode,
              name: '_ThemeStoreBase.themeMode'))
          .value;

  late final _$_themeModeAtom =
      Atom(name: '_ThemeStoreBase._themeMode', context: context);

  @override
  ThemeMode get _themeMode {
    _$_themeModeAtom.reportRead();
    return super._themeMode;
  }

  @override
  set _themeMode(ThemeMode value) {
    _$_themeModeAtom.reportWrite(value, super._themeMode, () {
      super._themeMode = value;
    });
  }

  late final _$offsetAtom =
      Atom(name: '_ThemeStoreBase.offset', context: context);

  @override
  Offset get offset {
    _$offsetAtom.reportRead();
    return super.offset;
  }

  @override
  set offset(Offset value) {
    _$offsetAtom.reportWrite(value, super.offset, () {
      super.offset = value;
    });
  }

  late final _$toggleThemeModeAsyncAction =
      AsyncAction('_ThemeStoreBase.toggleThemeMode', context: context);

  @override
  Future<void> toggleThemeMode() {
    return _$toggleThemeModeAsyncAction.run(() => super.toggleThemeMode());
  }

  late final _$_saveThemeModeAsyncAction =
      AsyncAction('_ThemeStoreBase._saveThemeMode', context: context);

  @override
  Future<bool> _saveThemeMode(ThemeMode value) {
    return _$_saveThemeModeAsyncAction.run(() => super._saveThemeMode(value));
  }

  late final _$_ThemeStoreBaseActionController =
      ActionController(name: '_ThemeStoreBase', context: context);

  @override
  void setOffset(Offset value) {
    final _$actionInfo = _$_ThemeStoreBaseActionController.startAction(
        name: '_ThemeStoreBase.setOffset');
    try {
      return super.setOffset(value);
    } finally {
      _$_ThemeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
offset: ${offset},
themeMode: ${themeMode}
    ''';
  }
}
