import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_section/custom_card_section_widget.dart';

class SectionScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Selecione a Categoria Desejada",
            style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
          child: Container(
            //height: MediaQuery.of(context).size.height,
            child: Table(
              children: [
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
                TableRow(
                    children: [
                      CustomCardSectionWidget(),
                      CustomCardSectionWidget(),
                    ]
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
