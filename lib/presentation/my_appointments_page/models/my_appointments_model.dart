import 'package:get/get.dart';
import 'listvector_item_model.dart';
import 'listvector_two_item_model.dart';

class MyAppointmentsModel {
  RxList<ListvectorItemModel> listvectorItemList =
      RxList.filled(2, ListvectorItemModel());

  RxList<ListvectorTwoItemModel> listvectorTwoItemList =
      RxList.filled(3, ListvectorTwoItemModel());
  //getters
  List<ListvectorItemModel> get listvectorItemListValue =>
      listvectorItemList.value;
  List<ListvectorTwoItemModel> get listvectorTwoItemListValue =>
      listvectorTwoItemList.value;
}
