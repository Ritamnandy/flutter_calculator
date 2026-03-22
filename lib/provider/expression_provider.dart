import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ExpressionProvider extends ChangeNotifier {
  String _btnvalue = '';

  String get value => _btnvalue;

  void evaluteExpression(String btnvalue) {
    btnvalue = btnvalue.replaceAll('X', '*');
    if (btnvalue == 'AC') {
      _btnvalue = '';
      btnvalue = '';
    } else if (btnvalue == 'del') {
      _btnvalue = _btnvalue.substring(0, _btnvalue.length - 1);
      btnvalue = btnvalue.substring(0, btnvalue.length - 1);
    } else if (btnvalue == '=') {
      calculate(btnvalue);
    } else {
      _btnvalue += btnvalue;
      btnvalue += btnvalue;
    }

    notifyListeners();
  }

  void calculate(String value) {
    if (value.isEmpty || value == '') {
      _btnvalue = '0';
      notifyListeners();
      return;
    }

    try {
      ExpressionParser p = GrammarParser();
      Expression exp = p.parse(value).simplify();

      var context = ContextModel();
      var evaluator = RealEvaluator(context);
      var eval = evaluator.evaluate(exp);

      _btnvalue = eval.toString();
    } catch (e) {
      _btnvalue = 'NaN';
    }
  }
}
