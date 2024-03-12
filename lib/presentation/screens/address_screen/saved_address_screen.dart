import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iron/core/app_theme/app_colors.dart';
import 'package:iron/core/assets_path/svg_path.dart';
import 'package:iron/core/constants/extensions.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widget/custom_app_bar.dart';
import '../../widgets/shared_widget/custom_sized_box.dart';

class SavedAddressScreen extends StatefulWidget {
  const SavedAddressScreen({super.key});

  @override
  State<SavedAddressScreen> createState() => _SavedAddressScreenState();
}

class _SavedAddressScreenState extends State<SavedAddressScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "Saved adresses",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSizedBox(
            height: 24,
          ),
          Text(
            "Saved Adresses",
            style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return AddressWidget(
                  value: index,
                  group: currentIndex,
                  onChanged: (value) {
                    currentIndex = value!;
                    setState(() {});
                  },
                );
              },
              separatorBuilder: (_, index) {
                return const CustomSizedBox(
                  height: 16,
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ).symmetricPadding(horizontal: 16),
    );
  }
}

class AddressWidget extends StatelessWidget {
  final int value;
  final int group;
  final void Function(int?)? onChanged;

  const AddressWidget({
    super.key,
    required this.value,
    required this.group,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        onChanged!(value);
      },
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      contentPadding: EdgeInsets.zero,
      leading: Radio(
        value: value,
        groupValue: group,
        onChanged: onChanged,
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
      ),
      title: Row(
        children: [
          SvgPicture.asset(
            SvgPath.locationAddress,
            width: 24.w,
            height: 24.h,
          ),
          const CustomSizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              "Location Title",
              style: CustomThemes.greyColor49ColorTextTheme(context).copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Icon(Icons.restore_from_trash_outlined)
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              "221 B Santa Monica, Los Angeles",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomThemes.greyColor67ColorTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),

          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.edit,
                size: 16.sp,
                color: AppColors.primaryColor,
              ),
              const CustomSizedBox(
                height: 4,
              ),
              Text("Edit",style: CustomThemes.primaryColorTextTheme(context).copyWith(fontWeight: FontWeight.w400,fontSize: 16.sp,),),
            ],
          )
        ],
      ),
      dense: false,
      minLeadingWidth: 20.w,
      style: ListTileStyle.list,
      // trailing: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Icon(Icons.restore_from_trash_outlined),
      //     Row(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Icon(
      //           Icons.edit,
      //           size: 14,
      //           color: AppColors.primaryColor,
      //         ),
      //         CustomSizedBox(
      //           height: 2,
      //         ),
      //         Text("Edit",style: CustomThemes.primaryColorTextTheme(context).copyWith(fontWeight: FontWeight.w400,fontSize: 12.sp,),),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
