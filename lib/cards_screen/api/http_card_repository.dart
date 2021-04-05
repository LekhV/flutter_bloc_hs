import 'package:flutter_example_bloc/api_client.dart';
import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';

import 'package:get_it/get_it.dart';

import 'package:flutter_example_bloc/cards_screen/api/card_response_wrapper.dart';

class HttpCardRepository implements CardRepository {
  final _wrapper = GetIt.instance.get<ClientWrapper>();

  @override
  Future<List<CardByParams>> fetchCardByParams(String params) async {
    final response = await _wrapper.client.get('cards/$params');

    final responseCardBacks = CardResponseWrapper.fromJson(response.data);

    return responseCardBacks.getCards();
  }

  @override
  Future<CardByParams> fetchCardDetails(String id) async {
    final response = await _wrapper.client.get('cards/$id');

    final responseCardBacks = CardResponseWrapper.fromJson(response.data);

    return responseCardBacks.getCard();
  }
}
