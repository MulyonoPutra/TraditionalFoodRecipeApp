part of 'pages.dart';

class FoodPages extends StatefulWidget {
  final Food food;

  const FoodPages({Key key, this.food}) : super(key: key);

  @override
  _FoodPagesState createState() => _FoodPagesState();
}

class _FoodPagesState extends State<FoodPages> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            Container(
                height: 258,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 40),
                  children: [
                    Row(
                      children: mockFoods
                          .map((e) => Padding(
                                padding: EdgeInsets.only(
                                    left: (e == mockFoods.first)
                                        ? defaultMargin
                                        : 0,
                                    right: defaultMargin),
                                child: GestureDetector(
                                    onTap: () {
                                      Get.to(FoodDetailsPage(food: e));
                                    },
                                    child: FoodCard(e)),
                              ))
                          .toList(),
                    )
                  ],
                )),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ["Traditional", "Popular", "Recomended"],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    List<Food> foods = (selectedIndex == 0)
                        ? mockFoods
                        : (selectedIndex == 1)
                            ? mockFoods
                            : mockFoods;
                    return Column(
                      children: foods
                          .map((e) => Padding(
                                padding: EdgeInsets.fromLTRB(
                                    defaultMargin, 0, defaultMargin, 16),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(FoodDetailsPage(food: e));
                                  },
                                  child: FoodListItem(
                                    food: e,
                                    itemWidth: listItemWidth,
                                  ),
                                ),
                              ))
                          .toList(),
                    );
                  }),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
