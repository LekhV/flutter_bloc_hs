import 'package:get_it/get_it.dart';

class CardBack {
  String cardBackId;
  String name;
  String description;
  String source;
  String howToGet;
  bool enabled;
  String img;
  String imgAnimated;
  String sortCategory;
  String sortOrder;
  String locale;

  CardBack({
    this.cardBackId,
    this.name,
    this.description,
    this.source,
    this.howToGet,
    this.enabled,
    this.img,
    this.imgAnimated,
    this.sortCategory,
    this.sortOrder,
    this.locale,
  });
}

abstract class CardBacksRepository {
  Future<List<CardBack>> fetchCardBacks();
}

class CardBacksService {
  final _cardBacksRepo = GetIt.instance.get<CardBacksRepository>();

  Future<List<CardBack>> fetchCardBacks() => _cardBacksRepo.fetchCardBacks();
}
