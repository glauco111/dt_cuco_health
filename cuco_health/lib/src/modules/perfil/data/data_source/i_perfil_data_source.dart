import '../../../../core/data/model/person_model.dart';

abstract class IPerfilDataSource {
    Future<PersonModel> getPerson();
}
