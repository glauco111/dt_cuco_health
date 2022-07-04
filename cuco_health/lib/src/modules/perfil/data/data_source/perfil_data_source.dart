import '../../../../core/data/model/person_model.dart';
import '../../../../core/utils/consts.dart';
import 'i_perfil_data_source.dart';
import 'package:dio/dio.dart';

class PerfilDataSource implements IPerfilDataSource {
  final Dio _dio;
  PerfilDataSource({required Dio dio}) : _dio = dio;

  @override
  Future<PersonModel> getPerson() async {
    try{
    var response =
        await _dio.get(Constants.endPoint, queryParameters: {'results': '1'});
    if (response.statusCode == 200) {
      return PersonModel.fromMap(response.data['results'][0]);
    } else {
      throw Exception(response.data);
    }
  }catch(e){
    throw Exception(e);
  }
  }
}
