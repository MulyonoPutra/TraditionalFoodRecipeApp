part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  FoodCard(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 800,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 15,
                          color: Colors.black12)
                    ],
                  ),
                  child: SizedBox(
                      height: double.infinity,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                              image: DecorationImage(
                                  image: NetworkImage(food.picturePath),
                                  fit: BoxFit.fill)),
                        ),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: 200,
                  child: Text(
                    food.name,
                    style: GoogleFonts.firaCode(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        color: Colors.white70),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
            )
          ],
        ),
      ),
    );
  }
}
