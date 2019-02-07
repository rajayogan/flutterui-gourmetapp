import 'package:flutter/material.dart';

class GuessYouLikePage extends StatefulWidget {
  @override
  _GuessYouLikePageState createState() => _GuessYouLikePageState();
}

class _GuessYouLikePageState extends State<GuessYouLikePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 15.0),
        getFoodItem(
            'Chicken Chow Mein',
            'assets/food1.jpg',
            'Chicken fried noodles is a delicious home-cooked dish made from chicken, fragrance and taste',
            123,
            23,
            23,
            5),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 125.0),
              child: Container(
                height: 1.0,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
        getFoodItem(
            'Beef vermicelli soup',
            'assets/food1.jpg',
            'Beef vermicelli soup is a delicacy made of beef and vermicelli. It has rich nutrition and attractive color.',
            123,
            23,
            23,
            4),
        SizedBox(height: 25.0),
        Padding(
          padding: const EdgeInsets.only(left:100.0),
          child: Container(
            height: 1.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  getFoodItem(String dishName, String imgPath, String description, int calInfo,
      int distance, int cookingTime, int rating) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width - 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dishName,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5.0),
                          height: 40.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                            color: Color(0xFFF76765),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
                Row(
                  children: <Widget>[
                    getRatedStar(rating, 1),
                    getRatedStar(rating, 2),
                    getRatedStar(rating, 3),
                    getRatedStar(rating, 4),
                    getRatedStar(rating, 5),
                    SizedBox(width: 7.0),
                    Text(rating.toString(),
                  style: TextStyle(
                    color: Colors.yellow[800],
                    fontSize: 17.0
                  ),
                  )
                  ],
                ),
                SizedBox(height: 10.0),
              Text('About dishes',
              style: TextStyle(
                fontSize: 12.0,
                color: Color(0xFFC6CC40)
              ),
              ),
              SizedBox(height: 5.0),
              Container(
                width: MediaQuery.of(context).size.width - 130.0,
                child: Text(description,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey
                ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Icon(Icons.fastfood, color: Colors.grey),
                  Text(
                    calInfo.toString() +'kcal',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(width: 7.0),
                  Icon(Icons.location_on, color: Colors.grey),
                  Text(distance.toString() + 'km',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  ),
                  SizedBox(width: 7.0),
                  Icon(Icons.timer, color: Colors.grey),
                  Text(cookingTime.toString() + 'mins',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  )
                ],
              )
              ],
            )
          ],
        ));
  }

  getRatedStar(int rating, int index) {
    if (index <= rating) {
      return Icon(Icons.star, color: Colors.yellow[600]);
    } else {
      return Icon(Icons.star, color: Colors.grey);
    }
  }
}
