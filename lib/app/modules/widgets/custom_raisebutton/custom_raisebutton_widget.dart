import 'package:flutter/material.dart';

class CustomRaisebuttonWidget extends StatelessWidget {
  final String text;
  final Color cor;
  final Color textcolor;
  final String nav;
  final Function function;

  const CustomRaisebuttonWidget({Key key,@required this.text,@required this.cor,@required this.textcolor,@required this.nav, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      padding: EdgeInsets.only(right: 30, left: 30),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
                color: Theme.of(context).accentColor,
                width: 3
            )
        ),
        onPressed: (){
          function;
          Navigator.pushNamed(context, nav);
        },
        color: cor,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: textcolor
          ),
        ),
      ),
    );
  }
}
