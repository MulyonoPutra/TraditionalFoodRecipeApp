part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Food food;

  const FoodDetailsPage({Key key, this.onBackButtonPressed, this.food})
      : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   color: mainColor,
          // ),
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          SafeArea(
              child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.food.picturePath),
                  fit: BoxFit.cover),
            ),
          )),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  // Back Button
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackButtonPressed != null) {
                            widget.onBackButtonPressed();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(3),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12),
                          // child: Image.asset('assets/back_arrow_white.png')
                        ),
                      ),
                    ),
                  ),
                  /* Body */
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      134, // 32 - 102
                                  child: Text(widget.food.name,
                                      style: blackFontStyle2),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
                          child: Text(
                            widget.food.description,
                            style: greyFontStyle,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width -
                              132, // 32 - 102
                          child: Text(
                            'Ingredients: ',
                            style: blackFontStyle3,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                          child: Text(
                            widget.food.ingredients,
                            style: greyFontStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
