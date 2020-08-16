import 'package:flutter/material.dart';

class TextfieldSemIconWidget extends StatelessWidget {
  final String text;
  final TextInputType keyboard;
  final Function change;
  final String controller;

  const TextfieldSemIconWidget({Key key, this.text, this.keyboard, this.change, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
      child: TextFormField(
        controller: TextEditingController(text: controller),
        keyboardType: keyboard,
        onChanged: change,
        style: TextStyle(
          color: Theme.of(context).accentColor,
        ),
        decoration: InputDecoration(
          hintText: text,
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
