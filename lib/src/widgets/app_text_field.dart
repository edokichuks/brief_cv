import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFiled extends StatefulWidget {
  final double? width;
  final double? labelSize;
  final String? hintText;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool? enabled;
  final FormFieldValidator<String>? validateFunction;
  final void Function(String)? onSaved, onChange;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final bool? enableErrorMessage;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor, labelColor;
  final bool? autofocus;
  final String? label;
  final String? firstLabel;
  final String? lastLabel;
  final List<TextInputFormatter>? inputFormatters;
  final bool isLoading;
  final double borderRadius;
  final String currency;
  final String? initialValue;
  // final Widget? labelWidget;
  final bool? isLabelWidget;

  const AppTextFiled({
    Key? key,
    this.width,
    this.currency = "",
    this.backgroundColor,
    this.isLoading = false,
    this.hintText,
    this.controller,
    this.minLines = 1,
    this.obscureText = false,
    this.enabled = true,
    this.validateFunction,
    this.onSaved,
    this.onChange,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocusNode,
    this.submitAction,
    this.enableErrorMessage = true,
    this.maxLines = 1,
    this.maxLength,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.bordercolor,
    this.autofocus,
    this.label,
    this.firstLabel,
    this.lastLabel,
    this.inputFormatters,
    this.borderRadius = 5,
    this.initialValue,
    this.labelSize,
    this.labelColor,
    this.isLabelWidget = false,
    //this.labelWidget,
  }) : super(key: key);

  @override
  State<AppTextFiled> createState() => _AppTextFiledState();
}

class _AppTextFiledState extends State<AppTextFiled> {
  String? error;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: textTheme.labelSmall?.copyWith(
              color: widget.labelColor ?? colorScheme.onBackground,
            ),
          ),
        Transform.scale(
          scaleY: 0.9,
          child: TextFormField(
            maxLength: widget.maxLength,
            initialValue: widget.initialValue,
            textAlign: TextAlign.left,
            autofocus: widget.autofocus ?? false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            enabled: widget.enabled,
            validator: widget.validateFunction != null
                ? widget.validateFunction!
                : (value) {
                    return null;
                  },
            onSaved: (val) {
              error = widget.validateFunction!(val);
              setState(() {});
              widget.onSaved!(val!);
            },
            onChanged: (val) {
              widget.validateFunction != null
                  ? error = widget.validateFunction!(val)
                  : error = null;
              setState(() {});
              if (widget.onChange != null) widget.onChange!(val);
            },
            style: const TextStyle(
              fontSize: 15.0,
            ),
            key: widget.key,
            maxLines: widget.maxLines,
            controller: widget.controller,
            obscureText: widget.obscureText!,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onFieldSubmitted,
            decoration: InputDecoration(
              // labelText: widget.labelText,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              filled: true,
              enabled: false,
              errorStyle: const TextStyle(fontSize: 0, height: -30),
              fillColor: widget.backgroundColor ?? Colors.brown.shade500,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.black.withOpacity(0.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: Colors.grey.shade200,
                  width: 0.5,
                ),
              ),
              labelStyle: TextStyle(
                color: Colors.grey.shade900,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: Colors.grey.shade200,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 89, 85, 85),
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                  color: Colors.grey.shade200,
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        if (error != null)
          const SizedBox(
            height: 5.0,
          ),
        if (error != null)
          Text(error!,
              style: textTheme.titleLarge?.copyWith(color: Colors.red)),
      ],
    );
  }
}
