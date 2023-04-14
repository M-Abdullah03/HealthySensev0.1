import 'package:get/get.dart';
import 'top_doctors_item_model.dart';
import 'top_doctors1_item_model.dart';

class TopDoctorsModel {

    RxList<TopDoctorsItemModel> topDoctorsItemList =
        RxList.filled(2, TopDoctorsItemModel());

    RxList<TopDoctors1ItemModel> topDoctors1ItemList =
        RxList.filled(4, TopDoctors1ItemModel());
  
}
