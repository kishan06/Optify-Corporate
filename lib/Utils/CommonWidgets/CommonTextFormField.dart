// ignore_for_file: must_be_immutable

import 'package:Optifii_Corporate/Utils/CommonWidgets/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remove_emoji_input_formatter/remove_emoji_input_formatter.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    Key? key,
    this.validator,
    this.validationMessage,
    this.hintText,
    this.leadingIcon,
    this.prefixIconColor = const Color(0xFF737373),
    this.isInputPassword = false,
    this.value,
    this.readonly = false,
    this.enabled = true,
    this.outlineColor = Colors.black,
    this.maxlines = 1,
    this.texttype,
    this.inputFormatters,
    this.onInput,
    this.onTap,
    this.suffixIcon,
    this.opacity1 = 0.04,
    this.opacity2 = 0.05,
    this.focusNode,
    this.controller,
  }) : super(key: key);

  dynamic validator;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? leadingIcon;
  final Color prefixIconColor;
  final bool isInputPassword;
  final String? value;
  final bool readonly;
  final bool enabled;
  final int maxlines;
  final TextInputType? texttype;
  final List<TextInputFormatter>? inputFormatters;
  final Color outlineColor;
  final String? Function(String?)? onInput;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final double opacity1;
  final double opacity2;
  final FocusNode? focusNode;
  String? validationMessage;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  void validateField(String value) {
    setState(() {
      widget.validationMessage =
          widget.validator?.call(value) ?? (value.isEmpty ? "" : null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          focusNode: widget.focusNode,
          style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xff000000),
              fontFamily: 'Helvetica'),
          cursorColor: Colors.black,
          // cursorHeight: 3
          initialValue: widget.value,
          readOnly: widget.readonly,
          onTap: widget.onTap,
          enabled: widget.enabled,
          enableInteractiveSelection: true,
          maxLines: widget.maxlines,
          obscureText: obscureText,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIconColor: widget.prefixIconColor,
            constraints: const BoxConstraints(minHeight: 50),
            hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color(0xFFcdcdcd),
                fontWeight: FontWeight.w400,
                fontFamily: 'Helvetica'),
            prefixIcon: widget.leadingIcon == null
                ? null
                : Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
                    child: widget.leadingIcon!,
                  ),
            suffixIcon: widget.isInputPassword
                ? GestureDetector(
                    onTap: () => setState(() => obscureText = !obscureText),
                    child: obscureText
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  "assets/images/svg/loginpasswordclose.svg",
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  'assets/images/svg/loginpasswordopen.svg',
                                ),
                              ),
                            ],
                          ),
                  )
                : widget.suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xffCDCDCD),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xff6211CB),
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.w),
          ),
          keyboardType: widget.texttype,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          onChanged: (value) {
            widget.onInput?.call(value);
            validateField(value);
          },
        ),
        sizedBoxHeight(5.h),
        widget.validationMessage == null
            ? const SizedBox()
            : Text(
                widget.validationMessage ?? '',
                style: TextStyle(color: Colors.red, fontSize: 14.sp),
                overflow: TextOverflow.ellipsis,
              ),
      ],
    );
  }
}

class CustomTextFormField2 extends StatefulWidget {
  CustomTextFormField2({
    Key? key,
    this.validator,
    this.validationMessage,
    this.textEditingController,
    this.hintText,
    this.leadingIcon,
    this.prefixIconColor = const Color(0xFF737373),
    this.isInputPassword = false,
    this.validatorText,
    this.value,
    this.readonly = false,
    this.enabled = true,
    this.maxlines = 1,
    this.texttype,
    this.inputFormatters,
    this.onInput,
    this.onTap,
    this.suffixIcon,
  }) : super(key: key);

  final dynamic validator;
  final TextEditingController? textEditingController;
  final String? hintText;
  final Widget? leadingIcon;
  final Color prefixIconColor;
  final bool isInputPassword;
  final String? validatorText;
  final String? value;
  final bool readonly;
  final bool enabled;
  final int maxlines;
  final TextInputType? texttype;
  final dynamic inputFormatters;
  final Function(String)? onInput;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  String? validationMessage;

  @override
  State<CustomTextFormField2> createState() => _CustomTextFormField2State();
}

class _CustomTextFormField2State extends State<CustomTextFormField2> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  void validateField(String value) {
    setState(() {
      widget.validationMessage =
          widget.validator?.call(value) ?? (value.isEmpty ? "" : null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          cursorColor: Colors.red,
          initialValue: widget.value,
          readOnly: widget.readonly,
          onTap: widget.onTap,
          enabled: widget.enabled,
          enableInteractiveSelection: true,
          maxLines: widget.maxlines,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureText,
          controller: widget.textEditingController,

          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIconColor: widget.prefixIconColor,
            constraints: const BoxConstraints(minHeight: 50),

            hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromARGB(255, 130, 128, 128),
                fontWeight: FontWeight.w400,
                fontFamily: 'hiragino'),

            // ignore: prefer_null_aware_operators
            prefixIcon: widget.leadingIcon,
            suffixIcon: widget.isInputPassword
                ? GestureDetector(
                    onTap: () => setState(() => obscureText = !obscureText),
                    child: obscureText
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.remove_red_eye),
                              ),
                            ],
                          )
                        : const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Color(0xFF959595),
                                ),
                              ),
                            ],
                          ),
                  )
                : widget.suffixIcon,
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          style: const TextStyle(color: Colors.white),
          keyboardType: widget.texttype,
          // validator: widget.validator ??
          //     (value) {
          //       if (value == null || value.isEmpty) {
          //         return "Empty value";
          //       }
          //       return null;
          //     },
          inputFormatters: widget.inputFormatters,
        ),
        sizedBoxHeight(5.h),
        widget.validationMessage == null
            ? const SizedBox()
            : Text(
                widget.validationMessage ?? '',
                style: TextStyle(color: Colors.red, fontSize: 12.sp),
                overflow: TextOverflow.ellipsis,
              ),
      ],
    );
  }
}

class CustomTextFormFieldPassword extends StatefulWidget {
  CustomTextFormFieldPassword({
    Key? key,
    this.validator,
    this.validationMessage,
    this.inputFormatters,
    this.hintText,
    this.validatorText,
    this.value,
    this.textEditingController,
    this.leadingIcon,
    this.readonly = false,
    this.enabled = true,
    this.textCapital = false,
    this.isInputPassword = false,
    this.outlineColor = Colors.black,
    this.prefixIconColor = Colors.white,
    this.texttype,
    this.onInput,
    this.onTap,
    this.maxlines = 1,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  final String? hintText;
  final String? validatorText;
  final String? value;
  final Widget? leadingIcon;
  final bool isInputPassword;
  final bool readonly;
  final bool enabled;
  final bool textCapital;
  final List<TextInputFormatter>? inputFormatters;
  final Color outlineColor;
  final Color prefixIconColor;
  final TextInputType? texttype;
  final Function(String)? onInput;
  final VoidCallback? onTap;
  final int maxlines;
  String? validationMessage;

  @override
  State<CustomTextFormFieldPassword> createState() =>
      _CustomtextFormFieldPasswordState();
}

class _CustomtextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  late bool obscureText;
  var emojiFormatter = RemoveEmojiInputFormatter();

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  void validateField(String value) {
    setState(() {
      widget.validationMessage = widget.validator?.call(value) ??
          (value.isEmpty ? "Empty value" : null);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> allFormatters = [emojiFormatter];
    if (widget.inputFormatters != null) {
      allFormatters.addAll(widget.inputFormatters!);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          textCapitalization: widget.textCapital
              ? TextCapitalization.characters
              : TextCapitalization.none,
          onTap: widget.onTap,
          style: TextStyle(
              fontSize: 16.sp, color: Colors.white, fontFamily: 'Helvetica'),
          initialValue: widget.value,
          readOnly: widget.readonly,
          enabled: widget.enabled,
          maxLines: widget.maxlines,
          cursorColor: Colors.white,
          obscureText: obscureText,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromARGB(255, 130, 128, 128),
                fontWeight: FontWeight.w400,
                fontFamily: 'Helvetica'),
            labelStyle: const TextStyle(color: Colors.white),
            errorStyle: TextStyle(
              fontSize: 13.sp,
              color: const Color.fromARGB(255, 245, 130, 122),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            filled: true,
            fillColor: Colors.transparent, // Make sure fillColor is transparent
            border: InputBorder.none,
            hintText: widget.hintText,
            prefixIconColor: widget.prefixIconColor,
            prefixIcon: widget.leadingIcon,
            suffixIcon: widget.isInputPassword
                ? GestureDetector(
                    onTap: () => setState(() => obscureText = !obscureText),
                    child: obscureText
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  "assets/images/svg/loginpasswordclose.svg",
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  'assets/images/svg/loginpasswordopen.svg',
                                ),
                              ),
                            ],
                          ),
                  )
                : null,
          ),
          keyboardType: widget.texttype,
          inputFormatters: allFormatters,
          validator: widget.validator,
        ),
        sizedBoxHeight(5.h),
        Text(
          widget.validationMessage ?? '',
          style: TextStyle(color: Colors.red, fontSize: 12.sp),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class SearchTextFormField extends StatefulWidget {
  SearchTextFormField({
    Key? key,
    this.validator,
    this.validationMessage,
    this.textEditingController,
    this.hintText,
    this.leadingIcon,
    this.prefixIconColor = const Color(0xFF737373),
    this.isInputPassword = false,
    this.value,
    this.readonly = false,
    this.enabled = true,
    this.outlineColor = Colors.black,
    this.maxlines = 1,
    this.texttype,
    this.inputFormatters,
    this.onInput,
    this.onTap,
    this.suffixIcon,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final TextEditingController? textEditingController;
  final String? hintText;
  final Widget? leadingIcon;
  final Color prefixIconColor;
  final bool isInputPassword;
  final String? value;
  final bool readonly;
  final bool enabled;
  final int maxlines;
  final TextInputType? texttype;
  final List<TextInputFormatter>? inputFormatters;
  final Color outlineColor;
  final Function(String)? onInput;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  String? validationMessage;

  @override
  State<SearchTextFormField> createState() => _SearchTextFormFieldState();
}

class _SearchTextFormFieldState extends State<SearchTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isInputPassword;
  }

  void validateField(String value) {
    setState(() {
      widget.validationMessage =
          widget.validator?.call(value) ?? (value.isEmpty ? "" : null);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: TextStyle(
              fontSize: 16.sp, color: Colors.white, fontFamily: 'Helvetica'),
          cursorColor: Colors.black,
          cursorHeight: 30,
          initialValue: widget.value,
          readOnly: widget.readonly,
          onTap: widget.onTap,
          enabled: widget.enabled,
          enableInteractiveSelection: true,
          maxLines: widget.maxlines,
          obscureText: obscureText,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIconColor: widget.prefixIconColor,
            constraints: const BoxConstraints(minHeight: 50),
            hintStyle: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromARGB(255, 130, 128, 128),
                fontWeight: FontWeight.w400,
                fontFamily: 'Helvetica'),
            prefixIcon: widget.leadingIcon,
            suffixIcon: widget.isInputPassword
                ? GestureDetector(
                    onTap: () => setState(() => obscureText = !obscureText),
                    child: obscureText
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  "assets/images/svg/loginpasswordclose.svg",
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: SvgPicture.asset(
                                  'assets/images/svg/loginpasswordopen.svg',
                                ),
                              ),
                            ],
                          ),
                  )
                : widget.suffixIcon,
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
          keyboardType: widget.texttype,
          inputFormatters: widget.inputFormatters,
        ),
        sizedBoxHeight(5.h),
        Text(
          widget.validationMessage ?? '',
          style: TextStyle(color: Colors.red, fontSize: 12.sp),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
