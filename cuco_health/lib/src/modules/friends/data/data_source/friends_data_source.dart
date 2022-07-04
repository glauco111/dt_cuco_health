import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/utils/consts.dart';
import 'package:dio/dio.dart';

import '../../../../core/data/model/person_model.dart';
import 'i_friends_data_source.dart';

class FriendsDataSource implements IFriendsDataSource {
  final Dio _dio;
  FriendsDataSource({required Dio dio}) : _dio = dio;

  @override
  Future<List<PersonModel>> getPeople() async {
    try {
      final Map<String, dynamic> queryParameters = {
        'results': Constants.numberOfFriends
      };
      var response =
          await _dio.get(Constants.endPoint, queryParameters: queryParameters);
      if (response.statusCode == 200) {
        List data = response.data['results'];

        return List.generate(
            data.length, (index) => PersonModel.fromMap(data[index]));
      } else {
        throw Exception(response.data);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
