import 'dart:io';

import 'package:cricketfantasy/model/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model.dart';

class ApiService {
  Future<List<KhiladiModel>> getData() async {
    List<KhiladiModel> data = new List<KhiladiModel>();
    try {
      String url = Config.url;
      var response = await Dio().get(
        url,
        options: new Options(
          headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
        data = (response.data as List)
            .map(
              (i) => KhiladiModel.fromJson(i),
            )
            .toList();
      }
    } on DioError catch (e) {
      print(e.response);
    }
  }
}
