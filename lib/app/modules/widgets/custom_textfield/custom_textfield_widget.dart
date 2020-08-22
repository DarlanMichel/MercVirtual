import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatelessWidget {
  final String text;
  final bool pass;
  final TextInputType keyboard;
  final IconData icon;
  final Function change;
  final Function validator;
  const CustomTextfieldWidget({Key key,@required this.text,@required this.pass,@required this.keyboard,@required this.icon, this.change, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 5),
      child: TextFormField(
        obscureText: pass,
        keyboardType: keyboard,
        onChanged: change,
        validator: validator,
        style: TextStyle(
          color: Theme.of(context).accentColor,
        ),
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icon),

          hintStyle: TextStyle(
            color: Theme.of(context).accentColor,
          ),
          border: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                  width: 1
              )
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                  width: 1
              )
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                  width: 1
              )
          ),
        ),
      ),
    );
  }
}
