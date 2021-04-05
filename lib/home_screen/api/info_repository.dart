import 'dart:async';

import 'package:flutter_example_bloc/api_client.dart';
import 'package:flutter_example_bloc/home_screen/dto/info_hs_dto.dart';

class InfoHSRepository {
  Future<InfoHSDTO> fetchInfoHS() async {
    final response = await ClientWrapper().client.get('info');
    return InfoHSDTO.fromJson(response.data);
  }
}
