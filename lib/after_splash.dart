import 'package:flutter/material.dart';

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .35,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/page_bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Covid-19 Tracker',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'India',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Last Updated on 1 hour ago',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Grid(
                          title: 'Confirmed',
                          no: '500',
                          colour: 0xff2AA847,
                          icon: Icons.arrow_upward,
                          today: '25',
                        ),
                        Grid(
                          title: 'Recovered',
                          no: '1500',
                          colour: 0xff077eff,
                          icon: Icons.arrow_upward,
                          today: '25',
                        ),
                        Grid(
                            title: 'Deceased',
                            no: '200',
                            colour: 0xffFe083b,
                            icon: Icons.arrow_downward,
                            today: '10'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          spreadRadius: 0.1,
                          offset: Offset(2, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Grid extends StatelessWidget {
  Grid({this.title, this.no, this.colour, this.icon, this.today});
  final String title;
  final String no;
  final int colour;
  final IconData icon;
  final String today;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              no,
              style: TextStyle(
                fontSize: 24.0,
                color: Color(colour),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(
                  icon,
                  size: 15,
                  color: Color(colour),
                ),
                Text(
                  today,
                  style: TextStyle(
                    color: Color(colour),
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }
}
