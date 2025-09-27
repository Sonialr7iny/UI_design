// Conceptual structure for a custom navigation item
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomNavItem extends StatelessWidget {
  final Widget
  iconData; // Changed from IconData to Widget to accept SvgPicture directly
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomNavItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color activeColor = HexColor('#5436F8');
    final Color iconSelectedColor = Colors.white;
    final Color iconUnselectedColor = HexColor('#AEADB5');
    final Color labelSelectedColor = Colors.white;
    double iconSize = 20.0;
    Widget currentIcon = iconData;
    if (iconData is SvgPicture) {
      currentIcon = SvgPicture.asset(
        (iconData as SvgPicture).bytesLoader is SvgAssetLoader
            ? ((iconData as SvgPicture).bytesLoader as SvgAssetLoader).assetName
            : 'assets/images/default.svg',
        height: iconSize,
        width: iconSize,
        fit: BoxFit.contain,
        colorFilter: ColorFilter.mode(
          isSelected ? iconSelectedColor : iconUnselectedColor,
          BlendMode.srcIn,
        ),
      );
    }
    const double selectedItemWidth = 99.0;
    const double itemHeight = 34.0;
    const double itemBorderRadius = 20.0;
    const EdgeInsets selectedItemPadding = EdgeInsets.symmetric(
      horizontal: 14.0,
      vertical: 7.0,
    );
    const EdgeInsets unselectedItemPadding = EdgeInsets.symmetric(
      vertical: 7.0,
      horizontal: 8.0,
    );
    const double iconGap = 10.0;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(itemBorderRadius),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: isSelected ? selectedItemPadding : unselectedItemPadding,
        height: itemHeight,

        decoration: BoxDecoration(
          color: isSelected ? activeColor : Colors.transparent,
          borderRadius: BorderRadius.circular(itemBorderRadius),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: isSelected
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            currentIcon,
            if (isSelected) SizedBox(width: iconGap),
            if (isSelected)
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth:
                      selectedItemWidth -
                      selectedItemPadding.horizontal -
                      iconSize -
                      iconGap -
                      1,
                ),
                child: Text(
                  label,
                  style: TextStyle(
                    color: labelSelectedColor,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Widget customNavBar({
//   required String icon,
//   required String label,
// }) {
//   return Container(
//     padding: EdgeInsets.only(top: 7,right: 14,bottom: 7,left: 14),
//     width: 99,
//     height: 34,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20),
//
//     ),
//     child: NavigationDestination(
//     icon:SvgPicture.asset(
//     icon,
//     height: 20,
//     width: 20,
//     fit: BoxFit.contain,
//     ),
//     label: label,
//     ),
//   );
// }
