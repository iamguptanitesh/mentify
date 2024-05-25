import 'package:flutter/material.dart';
import 'package:flutter_app/theme/my_colors.dart';

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Image(
              image: AssetImage('assets/Mental/vegetables.jpg'),
              height: 250,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(10),
                //   border: Border.all(
                //     color: MyColor.kPrimaryColor,
                //     width: 3,
                //     style: BorderStyle.none
                //   )
                // ),
                child: Text(
                  "A good diet plan, gives a good Mental Health",
                  style: TextStyle(
                      color: MyColor.kPrimaryColor,
                      fontWeight: FontWeight.w800),
                )),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Monday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayOne()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Tuesday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayTwo()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Wednesday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayThree()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Thursday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayFour()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Friday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DayFive()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Saturday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaySix()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            MaterialButton(
                splashColor: MyColor.kPrimaryColorLight,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Sunday"), Icon(Icons.chevron_right)],
                ),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaySeven()),
                  );
                },
                height: 50,
                minWidth: 100,
                color: MyColor.kPrimaryColor),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Tuesday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DayTwo()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Wednsday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DayThree()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //     ],
            //   ),
            //   Padding(
            //     padding: EdgeInsets.only(top: 10),
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Thursday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DayFour()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Friday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DayFive()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //     ],
            //   ),
            //   Padding(
            //     padding: EdgeInsets.only(top: 10),
            //   ),
            //   Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Saturday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DaySix()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //       MaterialButton(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(22.0)),
            //         child: new Text("Sunday"),
            //         textColor: Colors.white,
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => DaySeven()),
            //           );
            //         },
            //         height: 100,
            //         minWidth: 100,
            //         color: MyColor.kPrimaryColor,
            //       ),
            //     ],
            //   )
            // ],
          ]),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DayOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Monday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title:
                    new Text('2 pieces of whole-grain toast with vegetables.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Smoothie or low-fat yogurt'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),

              //Nonveg for day1

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuesday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of whole-grain bread or toast'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 grapefruit or orange'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Smoothie or low-fat yogurt'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Fat-free yogurt or milk with some berries'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats'),
              ),

              //day2 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wednsday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Cooked or boiled corn with any vegetables you like'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Omlete out of three eggs and some vegetables'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Yogurt.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 cookie.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Vegetables salad.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),

              // day3 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thursday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title:
                    new Text('2 pieces of whole-grain toast with vegetables.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Any grillednor boiled lean meats(chicken, lamb, fish, etc.)'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Chicken salad(grilled or boiled, with some vegetables or fruits.)'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),

              //day4 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Cooked or boiled corn with any vegetables you like.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Smoothie or low-fat yogurt.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or boiled beans.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Some hummus or mashed potatoes.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 serving of fruit.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilld or boiled fish or seafood.'),
              ),

              //day5 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DaySix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saturday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title:
                    new Text('2 pieces of whole-grain toast with vegetables.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Any grillednor boiled lean meats(chicken, lamb, fish, etc.)'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    'Chicken salad(grilled or boiled, with some vegetables or fruits.)'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),

              //day6 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DaySeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sunday"),
        backgroundColor: MyColor.kPrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'Veg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oatmeal porridge'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Oats with fat-free milk.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Smoothie or low-fat yogurt'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 cookie.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Yogurt.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled boiled lean meats.'),
              ),

              //day7 nonveg

              Text(
                'Nonveg',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text(
                    '1 cup of tea or black coffee without sugar and milk'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('2 scrambled eggs'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Lunch',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Brown rice or noodle.'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any nonveg soup.'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Snacks',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any no-salted nuts'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('1 piece of cheese'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: const Card(
                  child: Text(
                    'Dinner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: MyColor.kPrimaryColor,
                        fontSize: 30),
                  ),
                ),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Cooked or baked beans'),
              ),
              new ListTile(
                leading: new MyBullet(),
                title: new Text('Any grilled or boiled lean meats.'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Bullet List
class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: MyColor.kPrimaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
