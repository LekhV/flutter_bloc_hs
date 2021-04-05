import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_example_bloc/cards_screen/api/card_by_params.dart';

part 'card_by_params_dto.g.dart';

@JsonSerializable(nullable: false)
class CardByParamsDTO {
  CardByParamsDTO({
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

  factory CardByParamsDTO.fromJson(Map<String, dynamic> json) => _$CardByParamsDTOFromJson(json);
  Map<String, dynamic> toJson() => _$CardByParamsDTOToJson(this);

  CardByParams toCard() {
    return CardByParams(
      cardId: cardId,
      dbfId: dbfId,
      name: name,
      cardSet: cardSet,
      type: type,
      faction: faction,
      rarity: rarity,
      cost: cost,
      attack: attack,
      health: health,
      text: text,
      flavor: flavor,
      artist: artist,
      collectible: collectible,
      elite: elite,
      playerClass: playerClass,
      img: img,
      imgGold: imgGold,
      locale: locale,
    );
  }
}
