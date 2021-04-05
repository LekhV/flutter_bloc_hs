import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_example_bloc/cardbacks_screen/bloc/cardbacks_bloc.dart';
import 'package:flutter_example_bloc/cardbacks_screen/api/http_card_backs_repository.dart';
import 'package:flutter_example_bloc/cardbacks_screen/api/cardback.dart';

import 'package:flutter_example_bloc/cards_screen/bloc/list_cards_bloc.dart';
import 'package:flutter_example_bloc/home_screen/api/info_repository.dart';
import 'package:flutter_example_bloc/home_screen/bloc/info_hs_bloc.dart';

import 'api_client.dart';
import 'cards_screen/api/card_by_params.dart';
import 'cards_screen/api/http_card_repository.dart';
import 'cards_screen/card_details_screen/bloc/card_details_bloc.dart';
import 'config.dart';
import 'drawer/drawer_screen.dart';

void main() {
  final getIt = GetIt.instance;

  final InfoHSRepository infoHSRepository = InfoHSRepository();

  getIt.registerSingleton(AppConfig());
  getIt.registerSingleton(ClientWrapper());

  getIt.registerSingleton<CardBacksRepository>(HttpCardBacksRepository());
  getIt.registerSingleton(CardBacksService());

  getIt.registerSingleton<CardRepository>(HttpCardRepository());
  getIt.registerSingleton(CardService());

  runApp(
    MyApp(infoHSRepository: infoHSRepository),
  );
}

class MyApp extends StatelessWidget {
  final InfoHSRepository infoHSRepository;

  MyApp({Key key, @required this.infoHSRepository})
      : assert(infoHSRepository != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InfoHSBloc>(
          create: (BuildContext context) => InfoHSBloc(infoHSRepository: infoHSRepository),
        ),
        BlocProvider<CardsBloc>(
          create: (BuildContext context) => CardsBloc(),
        ),
        BlocProvider<CardDetailsBloc>(
          create: (BuildContext context) => CardDetailsBloc(),
        ),
        BlocProvider<CardBacksBloc>(
          create: (BuildContext context) => CardBacksBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter HS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DrawerScreen(),
      ),
    );
  }
}
