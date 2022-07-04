import '../../../../core/data/model/person_model.dart';

abstract class IFriendsDataSource {
  Future<List<PersonModel>> getPeople();
}
