import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.image, required this.title, required this.subtitle});
  final String image , title , subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title:  Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
         subtitle:  Text(subtitle, style: AppStyles.styleRegular12,),
        
        
      ),
    );
  }
}