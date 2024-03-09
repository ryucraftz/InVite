import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:invite/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            ),
            Image.asset(
              "images/birthday2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterranean",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      "Lol Decoration",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width: 20.0),
                Text(
                  a.toString(),
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur felis at metus dictum, id vulputate justo lacinia. Sed consectetur nunc in diam fermentum, sed ultrices mi convallis. Phasellus ultricies, nisl ac porta vehicula, elit magna suscipit mauris, eget varius nulla est vitae elit. Vivamus id nunc sed lectus lobortis lacinia. Suspendisse potenti. Vivamus nec magna vitae justo euismod vulputate. Vivamus elementum justo et libero condimentum, vel aliquet leo feugiat. Sed eu ultricies ligula. Nunc ac malesuada magna. Curabitur in nibh ut libero viverra suscipit. Ut a dui luctus, efficitur quam ut.",
              maxLines: 3,
              style: AppWidget.LightTextFieldStyle(),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Text(
                  "To Be Available",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
                SizedBox(width: 25.0),
                Icon(Icons.alarm, color: Colors.black54),
                SizedBox(width: 5.0),
                Text(
                  "120 mins",
                  style: AppWidget.semiBoldTextFieldStyle(),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      Text(
                        "\$28",
                        style: AppWidget.HeadlineTextFieldStyle(),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(width: 30.0,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
                        ),
                        SizedBox(width: 10.0,),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
