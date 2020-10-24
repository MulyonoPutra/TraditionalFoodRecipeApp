part of 'pages.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea( 
              child: Container(
            color: 'FAFAFC'.toColor(),
          )),
          Container(child: FoodPages())
        ],
      ),
    );
  }
}
