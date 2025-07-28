import 'package:dashboard/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';
import 'user_info_list_title.dart';

class CoustomDrawer extends StatelessWidget {
  const CoustomDrawer({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transactions', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTitle(
            image: Assets.imagesAvatar3,
            title: 'Ahmed Hassaan',
            subtitle: 'ahassaan619@gmail.com',
          ),
          const SizedBox(height: 20),
        
         ListView.builder(

              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return DrawerItem(drawerItemModel: items[index]);
              },
            
          ),
        ]
        
      )
    );
  }
}