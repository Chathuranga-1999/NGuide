import 'package:flutter/material.dart';

class FormContainerWidget extends StatefulWidget {
  final TextEditingController? controller;
  final Key? fieldKey;
  final bool? isPasswordField;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;

   const FormContainerWidget({
    this.controller,
    this.isPasswordField,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    super.key});

  @override
  State<FormContainerWidget> createState() => __FormContainerWidgetState();
}

class __FormContainerWidgetState extends State<FormContainerWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
        child: SizedBox(
          height: 45,
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.inputType,
            key: widget.fieldKey,
            obscureText: widget.isPasswordField == true? _obscureText: false,
            onSaved: widget.onSaved,
            onFieldSubmitted: widget.onFieldSubmitted,
              
           decoration: new InputDecoration(
                    filled: true,
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.3)),
                    suffixIcon:new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText =!_obscureText;
                      });
                    },
                    child: 
                    widget.isPasswordField ==true? Icon(_obscureText ? Icons.visibility_off :Icons.visibility, color: _obscureText==false ? Colors.blue :Colors.grey,): Text(""),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF098F0F),width: 3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF098F0F),width: 3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                   ), 
          ),
        ),
      ),
    );
  }
}