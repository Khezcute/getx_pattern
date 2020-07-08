import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_site/app/modules/home/home_controller.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_drawer_header_widget.dart';
import 'package:getx_pattern_site/app/modules/home/widgets/custom_item_drawer_widget.dart';
import 'package:getx_pattern_site/app/theme/app_colors.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomDrawer extends GetView {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ContainerResponsive(
          key: Key('container-drawer'),
          height: Get.height,
          heightResponsive: false,
          widthResponsive: true,
          width: 300,
          child: Drawer(
            child: ContainerResponsive(
                margin: EdgeInsetsResponsive.only(bottom: 50),
                child: ListView.separated(
                  itemCount: controller.topics.length + 1,
                  separatorBuilder: (context, index) => index > 0 ? Divider(
                    height: 2,
                    color: spotlightColor,
                    indent: 2,
                    endIndent: 24,
                  ) : Container(),
                  itemBuilder: (c, i) {
                    return i == 0
                        ? CustomDrawerHeaderWidget()
                        : CustomItemDrawer(
                            text: controller.topics[i - 1],
                          );
                  },
                )),
          ),
        ),
        Flexible(child: Text('fewfewffewfewa'))
      ],
    );
  }
}
