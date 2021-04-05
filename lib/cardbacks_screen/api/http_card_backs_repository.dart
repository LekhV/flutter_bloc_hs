import 'package:flutter_example_bloc/api_client.dart';

import 'package:get_it/get_it.dart';

import 'package:flutter_example_bloc/cardbacks_screen/api/cardback.dart';

import 'card_backs_response_wrapper.dart';

class HttpCardBacksRepository implements CardBacksRepository {
  final _wrapper = GetIt.instance.get<ClientWrapper>();

  @override
  Future<List<CardBack>> fetchCardBacks() async {
    final response = await _wrapper.client.get('cardbacks');

    final responseCardBacks = CardBacksResponseWrapper.fromJson(response.data);
    print(responseCardBacks.getCardBacks().length);
    return responseCardBacks.getCardBacks();
  }
}
