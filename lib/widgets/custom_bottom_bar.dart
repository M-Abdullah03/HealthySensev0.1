import 'package:flutter/material.dart';
import 'package:healthysense/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFluenthome48,
      type: BottomBarEnum.Fluenthome48,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFluentmdl2med,
      type: BottomBarEnum.Fluentmdl2med,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector,
      type: BottomBarEnum.Vector,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEntypolabflas,
      type: BottomBarEnum.Entypolabflas,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGameiconsmedi,
      type: BottomBarEnum.Gameiconsmedi,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: getMargin(
          left: 1,
          right: 1,
        ),
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                17.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                17.00,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black9003f,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                0,
                1,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  30.00,
                ),
                width: getSize(
                  30.00,
                ),
                color: ColorConstant.gray500,
              ),
              activeIcon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  35.00,
                ),
                width: getSize(
                  35.00,
                ),
                color: ColorConstant.blue801,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Fluenthome48,
  Fluentmdl2med,
  Vector,
  Entypolabflas,
  Gameiconsmedi,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
