import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/core/models/category_model.dart';
import 'package:news_app/core/models/source_model.dart';

class ApiManager{

  static Future<List<SourceModel>>fetchDataSources(String categoryModelID) async{

    var url = Uri.https(
      Constants.baseUrl,
       "/v2/top-headlines/sources",
      {
        "apiKey" : Constants.apiKey,
        "category" : categoryModelID
      }
    );
    final response=  await http.get(url);

    List<SourceModel> sourcesDataList = [];
    if(response.statusCode == 200){
      print(response.body);
      var data = jsonDecode(response.body);
      var sourcesList = data["sources"] as List;
      for(var element in sourcesList){
        sourcesDataList.add(SourceModel.fromJson(element));
      }
      return sourcesDataList;
    }
    else{
      throw Exception("Failed to load data");
    }

  }
}