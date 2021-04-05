//import 'dart:convert';
import 'package:get_it/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

class CardByParams {
  CardByParams({
    this.cardId,
    this.dbfId,
    this.name,
    this.cardSet,
    this.type,
    this.faction,
    this.rarity,
    this.cost,
    this.attack,
    this.health,
    this.text,
    this.flavor,
    this.artist,
    this.collectible,
    this.elite,
    this.playerClass,
    this.img,
    this.imgGold,
    this.locale,
    this.mechanics,
  });

  String cardId;
  String dbfId;
  String name;
  String cardSet;
  String type;
  String faction;
  String rarity;
  int cost;
  int attack;
  int health;
  String text;
  String flavor;
  String artist;
  bool collectible;
  bool elite;
  String playerClass;
  String img;
  String imgGold;
  String locale;
  @JsonKey(nullable: true)
  List<Mechanics> mechanics;
}

abstract class CardRepository {
  Future<List<CardByParams>> fetchCardByParams(String params);
  Future<CardByParams> fetchCardDetails(String id);
}

class CardService {
  final _cardRepo = GetIt.instance.get<CardRepository>();

  Future<List<CardByParams>> fetchCardByParams(String params) =>
      _cardRepo.fetchCardByParams(params);
  Future<CardByParams> fetchCardDetails(String id) => _cardRepo.fetchCardDetails(id);
}

class Mechanics {
  String name;

  Mechanics({this.name});
}
