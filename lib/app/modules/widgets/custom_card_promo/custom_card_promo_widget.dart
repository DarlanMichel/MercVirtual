import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CustomCardPromoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 10,
      itemBuilder: (c, i) {
        return new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 265,
                right: -60,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor.withOpacity(0.4),
                  radius: 100,
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text("$i"),
                      Text(
                        "Batata Lay's 96g un",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "images/lays.jpg",
                        height: 200,
                        width: 200,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                                "R\$ 5,98",
                                style: TextStyle(
                                    color: Theme.of(context).accentColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      control: SwiperControl(),
//      pagination: SwiperPagination(
//        builder: DotSwiperPaginationBuilder(
//          activeColor: Theme.of(context).accentColor,
//          color: Theme.of(context).primaryColor,
//          size: 10,
//          activeSize: 20,
//          space: 5
//        )
//      ),
      autoplayDelay: 5000,
      autoplay: true,
    );
  }
}
