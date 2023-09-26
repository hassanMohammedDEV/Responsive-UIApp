import 'package:flutter/material.dart';

class ResponsiveUtils extends StatelessWidget {
  const ResponsiveUtils({
    Key? key, required this.webScreen, required this.tabletScreen,
    required this.mobileScreen}) : super(key: key);

  static const double _mobileWidthLimit = 650.0;
  static const double _tabletWidthLimit = 1100.0;

  final Widget webScreen;
  final Widget tabletScreen;
  final Widget mobileScreen;

  static bool isWebScreen(final BuildContext context)
  => MediaQuery.of(context).size.width>=_tabletWidthLimit;

  static bool isTabletScreen(final BuildContext context)
  => MediaQuery.of(context).size.width>=_mobileWidthLimit &&
      MediaQuery.of(context).size.width<=_tabletWidthLimit;

  static bool isMobileScreen(final BuildContext context)
  => MediaQuery.of(context).size.width<=_mobileWidthLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>_tabletWidthLimit){
        return webScreen;
      }if(constraints.maxWidth>_mobileWidthLimit){
        return tabletScreen;
      }else{
        return mobileScreen;
      }
    });
  }
}
