import 'package:design_system/text/custom_text.dart';
import 'package:flutter/material.dart';

class CustomScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  static const appHeight = kToolbarHeight * 1.3;

  @override
  Size get preferredSize => const Size.fromHeight(appHeight);

  final String? title;
  final Widget? titleWidget;
  final String? subTitle;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? backIconColor;
  final bool isBack;
  final bool isFlat;
  final Function()? onBack;
  final List<Widget>? actions;

  const CustomScreenAppbar({
    Key? key,
    this.title,
    this.titleWidget,
    this.subTitle,
    this.titleColor,
    this.subTitleColor,
    this.backIconColor,
    required this.isBack,
    this.isFlat = false,
    this.onBack,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      toolbarHeight: appHeight,
      backgroundColor: isFlat ? Colors.transparent : Colors.black26,
      iconTheme: Theme.of(context).iconTheme,
      bottom: isFlat
          ? null
          : PreferredSize(
              child: Container(
                color: Colors.black.withOpacity(0.3),
                height: 2.0,
              ),
              preferredSize: const Size.fromHeight(4.0),
            ),
      title: title != null
          ? _AppBarTitle(
              title: title ?? '',
              subTitle: subTitle ?? '',
              titleColor: titleColor,
              subTitleColor: subTitleColor,
            )
          : titleWidget,
      leading: isBack
          ? _AppBarBackButton(
              onBack: onBack,
              color: backIconColor,
            )
          : null,
      actions: actions,
    );
  }
}

class _AppBarBackButton extends StatelessWidget {
  const _AppBarBackButton({
    Key? key,
    this.onBack,
    this.color,
  }) : super(key: key);

  final Function()? onBack;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.only(left: 12),
      onPressed: onBack ??
          () {
            Navigator.pop(context);
          },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 14,
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subTitleColor,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color? titleColor;
  final Color? subTitleColor;

  @override
  Widget build(BuildContext context) {
    final haveSubTitle = subTitle.isNotEmpty;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: title,
          size: 20.0,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).iconTheme.color,
        ),
        if (haveSubTitle) ...[
          const SizedBox(height: 5),
          CustomText(
            text: subTitle,
          ),
        ]
      ],
    );
  }
}
