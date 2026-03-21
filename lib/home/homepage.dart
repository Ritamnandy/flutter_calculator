import 'package:calculate/home/firstbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(137, 105, 104, 104),
      appBar: AppBar(
        title: Text('C A L C U L A T O R'),
        backgroundColor: const Color.fromARGB(255, 112, 110, 110),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 120),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(right: 20),

                child: Text(
                  '20+20f',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 72),
              Expanded(
                flex: 6,
                child: GridView.builder(
                  itemCount: 20,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Firstbutton(
                        text: '0',
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 1) {
                      return Firstbutton(
                        text: '1',
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 2) {
                      return Firstbutton(
                        text: 2.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 3) {
                      return Firstbutton(
                        text: 3.toString(),
                        icon: FontAwesomeIcons.divide,
                        iconcolor: const Color.fromARGB(255, 241, 90, 43),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 4) {
                      return Firstbutton(
                        text: 7.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 5) {
                      return Firstbutton(
                        text: 8.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 6) {
                      return Firstbutton(
                        text: 9.toString(),

                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 7) {
                      return Firstbutton(
                        text: 'X',

                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: const Color.fromARGB(255, 234, 90, 46),
                      );
                    }
                    if (index == 8) {
                      return Firstbutton(
                        text: 4.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 9) {
                      return Firstbutton(
                        text: 5.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 10) {
                      return Firstbutton(
                        text: 6.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 11) {
                      return Firstbutton(
                        text: 10.toString(),
                        icon: FontAwesomeIcons.minus,
                        iconcolor: const Color.fromARGB(255, 240, 104, 63),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 12) {
                      return Firstbutton(
                        text: 1.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 13) {
                      return Firstbutton(
                        text: 2.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 14) {
                      return Firstbutton(
                        text: 3.toString(),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 15) {
                      return Firstbutton(
                        text: 15.toString(),
                        icon: FontAwesomeIcons.plus,
                        iconcolor: const Color.fromARGB(255, 240, 104, 63),
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 16) {
                      return Firstbutton(
                        text: 16.toString(),
                        icon: FontAwesomeIcons.rightLeft,
                        iconcolor: Colors.deepOrange,
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 17) {
                      return Firstbutton(
                        text: '0',
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 18) {
                      return Firstbutton(
                        text: '.',
                        color: const Color.fromARGB(255, 38, 38, 38),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    if (index == 19) {
                      return Firstbutton(
                        text: 19.toString(),
                        icon: FontAwesomeIcons.equals,
                        iconcolor: Colors.white,
                        color: const Color.fromARGB(255, 241, 74, 23),
                        onpress: () {},
                        frontcolor: Colors.white,
                      );
                    }
                    return Firstbutton(
                      text: 50.toString(),
                      color: const Color.fromARGB(255, 38, 38, 38),
                      onpress: () {},
                      frontcolor: Colors.white,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
