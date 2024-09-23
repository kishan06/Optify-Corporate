// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.validator,
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
    this.textCapV,
    this.suffixIcon,
    this.controller,
    this.initialValue,
  });

  final dynamic validator;
  final dynamic initialValue;
  final TextEditingController? controller;
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
  final TextCapitalization? textCapV;
  final Widget? suffixIcon;

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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: const Color(0xff000000),
        initialValue: widget.value,
        readOnly: widget.readonly,
        onTap: widget.onTap,
        enabled: widget.enabled,
        enableInteractiveSelection: false,
        maxLines: widget.maxlines,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText,
        controller: widget.controller,
        textCapitalization: widget.textCapV ?? TextCapitalization.none,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
              color: Color(0xffCDCDCD),
              fontSize: 14,
              fontFamily: "Helvetica",
              fontWeight: FontWeight.w400),
          hintText: widget.hintText,
          prefixIconColor: widget.prefixIconColor,
          // ignore: prefer_null_aware_operators
          prefixIcon: widget.leadingIcon == null ? null : widget.leadingIcon!,
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
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFDFDEDE)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        ),
        style: const TextStyle(color: Color(0xff000000), height: 50),
        keyboardType: widget.texttype,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        onChanged: (value) {
          widget.onInput?.call(value);
        },
      ),
    );
  }
}
