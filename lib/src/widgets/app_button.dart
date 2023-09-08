import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_task2/src/constants/app_color.dart';


class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.color,
    this.textColor,
    this.width,
    this.text,
    this.onTap,
    this.padding,
    this.margin,
    this.height = 56,
    this.onRetry,
    this.isLoading = false,
    this.isEnabled = true,
    this.hasError = false,
    this.hasBorder = false,
  }) : super(key: key);
  final Color? color, textColor;
  final String? text;
  final void Function()? onTap, onRetry;
  final double? width, height;
  final EdgeInsetsGeometry? padding, margin;
  final bool isLoading, isEnabled, hasError, hasBorder;

  @override
  Widget build(BuildContext context) {
    final bool hasFocus = FocusScope.of(context).hasFocus;

    return InkWell(
      onTap: hasError
          ? onRetry
          : isLoading
              ? null
              : (!isEnabled
                  ? null
                  : () {
                      if (hasFocus) {
                        FocusScope.of(context).unfocus();
                      }
                      onTap?.call();
                    }),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        decoration: BoxDecoration(
          border: hasBorder ? Border.all(width: 0.2) : null,
          borderRadius: BorderRadius.circular(6),
          color: color ?? (!isEnabled ? AppColor.mainAppColor : AppColor.mainAppColor),
        ),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isLoading)
              Text(
                text ?? 'Click',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: textColor ?? Colors.white,
                ),
              ),
            if (isLoading)
          CupertinoActivityIndicator( animating: true, )
          ],
        ),
      ),
    );
  }
}
