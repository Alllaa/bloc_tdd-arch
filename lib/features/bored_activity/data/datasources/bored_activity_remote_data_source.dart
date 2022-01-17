import 'dart:convert';

import 'package:newblock/core/error/exceptions.dart';
import 'package:newblock/features/bored_activity/data/models/bored_activity_model.dart';
import 'package:http/http.dart';

abstract class BoredActivitRemoteDataSource {
  Future<BoredActivityModel> getBoredActivity();
}

class BoredActivitRemoteDataSourceImpl implements BoredActivitRemoteDataSource{


  @override
  Future<BoredActivityModel> getBoredActivity() async{

    final response = await get(Uri.parse('https://www.boredapi.com/api/activity'));

    if (response.statusCode == 200){
      return  BoredActivityModel.fromJson(json.decode(response.body));
    }else{
      throw ServerException();
    }

  }

}
