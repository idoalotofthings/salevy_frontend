import 'package:salevy_frontend/data/shoe_datasource.dart';
import 'package:salevy_frontend/ui/widgets/shoe_card.dart';
import 'package:salevy_frontend/model/shoe.dart';

List<ShoeCard> generateShoeCardList(List<Shoe> shoeList) {
  List<ShoeCard> list = [];

  for (Shoe shoe in shoeList) {
    list.add(ShoeCard(shoe));
  }

  return list;
}

final shoeCardList = generateShoeCardList(shoes);
