import 'package:calculate/home/firstbutton.dart';
import 'package:calculate/home/homepage.dart';
import 'package:calculate/provider/expression_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<ExpressionProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(137, 105, 104, 104),

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
              SizedBox(height: 58),
              Expanded(
                flex: 6,
                child: GridView.builder(
                  itemCount: 35,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return GestureDetector(
                        onTap: () {},
                        child: Firstbutton(
                          text: '2nd',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(116, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 1) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('rad');
                        },
                        child: Firstbutton(
                          text: 'rad',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(123, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 2) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('sin(');
                        },
                        child: Firstbutton(
                          text: 'sin',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(162, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 3) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('cos(');
                        },
                        child: Firstbutton(
                          text: 'cos',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: const Color.fromARGB(150, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 4) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('tan(');
                        },
                        child: Firstbutton(
                          text: 'tan',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(171, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 5) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('^');
                        },
                        child: Firstbutton(
                          text: 'x^y',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(177, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 6) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('lg(');
                        },
                        child: Firstbutton(
                          text: 'lg',

                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(168, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 7) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('ln(');
                        },
                        child: Firstbutton(
                          text: 'ln',

                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(176, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 8) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('(');
                        },
                        child: Firstbutton(
                          text: '(',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(174, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 9) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression(')');
                        },
                        child: Firstbutton(
                          text: ')',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(181, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 10) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('√');
                        },
                        child: Firstbutton(
                          text: '√x',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(179, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 11) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('AC');
                        },
                        child: Firstbutton(
                          text: 'AC',

                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 251, 84, 33),
                        ),
                      );
                    }
                    if (index == 12) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('del');
                        },
                        child: Firstbutton(
                          text: '',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          icon: FontAwesomeIcons.deleteLeft,
                          iconcolor: const Color.fromARGB(255, 239, 82, 34),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 13) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('%');
                        },
                        child: Firstbutton(
                          text: '%',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 240, 79, 30),
                        ),
                      );
                    }
                    if (index == 14) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('÷');
                        },
                        child: Firstbutton(
                          text: '÷',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: const Color.fromARGB(255, 232, 74, 26),
                        ),
                      );
                    }
                    if (index == 15) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('!');
                        },
                        child: Firstbutton(
                          text: 'x!',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: const Color.fromARGB(182, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 16) {
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
                    if (index == 17) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('8');
                        },
                        child: Firstbutton(
                          text: '8',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 18) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('9');
                        },
                        child: Firstbutton(
                          text: '9',
                          color: const Color.fromARGB(255, 38, 38, 38),

                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 19) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('X');
                        },
                        child: Firstbutton(
                          text: 'X',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: const Color.fromARGB(255, 237, 77, 28),
                        ),
                      );
                    }
                    if (index == 20) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('1/');
                        },
                        child: Firstbutton(
                          text: '1/x',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: const Color.fromARGB(174, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 21) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('4');
                        },
                        child: Firstbutton(
                          text: '4',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 22) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('5');
                        },
                        child: Firstbutton(
                          text: '5',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 23) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('6');
                        },
                        child: Firstbutton(
                          text: '6',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 24) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('-');
                        },
                        child: Firstbutton(
                          text: 'X',
                          icon: FontAwesomeIcons.minus,
                          iconcolor: const Color.fromARGB(255, 239, 77, 28),
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 25) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('3.145');
                        },
                        child: Firstbutton(
                          text: 'π',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: const Color.fromARGB(170, 255, 255, 255),
                        ),
                      );
                    }
                    if (index == 26) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('1');
                        },
                        child: Firstbutton(
                          text: '1',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 27) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('2');
                        },
                        child: Firstbutton(
                          text: '2',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 28) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('3');
                        },
                        child: Firstbutton(
                          text: '3',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 29) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('+');
                        },
                        child: Firstbutton(
                          text: '1',
                          icon: FontAwesomeIcons.plus,
                          iconcolor: const Color.fromARGB(255, 240, 74, 24),
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 30) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                    return Homepage();
                                  },
                              transitionsBuilder:
                                  (
                                    context,
                                    animation,
                                    secondaryAnimation,
                                    child,
                                  ) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                            ),
                          );
                        },
                        child: Firstbutton(
                          text: '1',
                          icon: FontAwesomeIcons.arrowLeft,
                          iconcolor: const Color.fromARGB(255, 249, 79, 27),
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 31) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('e');
                        },
                        child: Firstbutton(
                          text: 'e',
                          color: const Color.fromARGB(255, 38, 38, 38),
                          frontcolor: Colors.white,
                        ),
                      );
                    }
                    if (index == 32) {
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
                    if (index == 33) {
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
                    if (index == 34) {
                      return GestureDetector(
                        onTap: () {
                          calculator.evaluteExpression('=');
                        },
                        child: Firstbutton(
                          text: '1',
                          icon: FontAwesomeIcons.equals,
                          iconcolor: Colors.white,
                          color: Colors.deepOrange,
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
