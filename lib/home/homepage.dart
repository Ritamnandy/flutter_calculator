import 'package:calculate/home/firstbutton.dart';
import 'package:calculate/provider/expression_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<ExpressionProvider>(context);
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

                child: Consumer(
                  builder: (ctx, value, child) => Text(
                    ctx.watch<ExpressionProvider>().value,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
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
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('AC');
                        },
                        child: Firstbutton(
                          text: 'AC',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 231, 81, 36),
                        ),
                      );
                    }
                    if (index == 1) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('del');
                        },
                        child: Firstbutton(
                          text: '',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                          icon: FontAwesomeIcons.deleteLeft,
                          iconcolor: const Color.fromARGB(255, 232, 80, 34),
                        ),
                      );
                    }
                    if (index == 2) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('%');
                        },
                        child: Firstbutton(
                          text: '%',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 231, 82, 36),
                        ),
                      );
                    }
                    if (index == 3) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('/');
                        },
                        child: Firstbutton(
                          text: 3.toString(),
                          icon: FontAwesomeIcons.divide,
                          iconcolor: const Color.fromARGB(255, 241, 90, 43),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 4) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('7');
                        },
                        child: Firstbutton(
                          text: 7.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 5) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('8');
                        },
                        child: Firstbutton(
                          text: 8.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 6) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('9');
                        },
                        child: Firstbutton(
                          text: 9.toString(),

                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 7) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('X');
                        },
                        child: Firstbutton(
                          text: 'X',

                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 234, 90, 46),
                        ),
                      );
                    }
                    if (index == 8) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('4');
                        },
                        child: Firstbutton(
                          text: 4.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 9) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('5');
                        },
                        child: Firstbutton(
                          text: 5.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 10) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('6');
                        },
                        child: Firstbutton(
                          text: 6.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 11) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('-');
                        },
                        child: Firstbutton(
                          text: '',
                          icon: FontAwesomeIcons.minus,
                          iconcolor: const Color.fromARGB(255, 240, 104, 63),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 12) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('1');
                        },
                        child: Firstbutton(
                          text: 1.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 13) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('2');
                        },
                        child: Firstbutton(
                          text: 2.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 14) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('3');
                        },
                        child: Firstbutton(
                          text: 3.toString(),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 15) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('+');
                        },
                        child: Firstbutton(
                          text: 15.toString(),
                          icon: FontAwesomeIcons.plus,
                          iconcolor: const Color.fromARGB(255, 240, 104, 63),
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 16) {
                      return GestureDetector(
                        onTap: () {},
                        child: Firstbutton(
                          text: 16.toString(),
                          icon: FontAwesomeIcons.rightLeft,
                          iconcolor: Colors.deepOrange,
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 17) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('0');
                        },
                        child: Firstbutton(
                          text: '0',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 18) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('.');
                        },
                        child: Firstbutton(
                          text: '.',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 19) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('=');
                        },
                        child: Firstbutton(
                          text: 19.toString(),
                          icon: FontAwesomeIcons.equals,
                          iconcolor: Colors.white,
                          color: const Color.fromARGB(255, 241, 74, 23),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    return Firstbutton(
                      text: 50.toString(),
                      color: const Color.fromARGB(255, 38, 38, 38),

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
