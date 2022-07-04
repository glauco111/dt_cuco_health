import 'package:cuco_health/src/core/error/failures.dart';

import '../../../../core/widgets/error_modal.dart';
import '../../domain/usecases/get_person_usecase.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/domain/enums/page_state.dart';
import '../../../bottom_navigation/presentation/controller/bottom_navigation_controller.dart';
part 'perfil_controller.g.dart';

class PerfilController = _PerfilControllerBase with _$PerfilController;

abstract class _PerfilControllerBase with Store {
  final GetPersonUsecase _getPerson;

  _PerfilControllerBase({required GetPersonUsecase getPerson})
      : _getPerson = getPerson;

  Person? person;

  @observable
  PageState state = PageState.start;

  @action
  Future<void> pipeline(BuildContext context) async {
    setState(PageState.loading);
    var personOrFailure = await _getPerson();
    return personOrFailure.fold((failure) => setFailure(context, failure),
        (person) => {this.person = person, setState(PageState.success)});
  }

  void setFailure(BuildContext context, IFailure failure) {
    debugPrint(failure.details);
    ErrorModal().show(context, () {
      pipeline(context);
    });
    setState(PageState.error);
  }

  void setState(PageState state) => this.state = state;
}
