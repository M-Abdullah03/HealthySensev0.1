import 'package:get/get.dart';
import 'labs_item_model.dart';
import 'labs1_item_model.dart';

class LabsModel {
  
  
  RxList<LabsItemModel> labsItemList = RxList.filled(4, LabsItemModel());

  RxList<Labs1ItemModel> labs1ItemList = RxList.filled(3, Labs1ItemModel());
  //getter 
  List<LabsItemModel> get labsItemListValue => labsItemList;
  
}
