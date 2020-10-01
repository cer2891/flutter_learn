import 'dart:math';

class CalculatorBMI{

  final int height;
  final int weight;

  double _bmi;

  CalculatorBMI({this.height,this.weight});

  String calculBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    if(_bmi >= 25){
      return 'Перебор';
    }else if(_bmi>18.5){
      return 'Нормально';
    }else{
      return 'Недобор';
    }
  }

  String getIntepret()
  {
    if(_bmi >= 25){
      return 'Садимся на диету срочно! Хватит жрать';
    }else if(_bmi>18.5){
      return 'Так держать и спортом заниматься ';
    }else{
      return 'Нужно много есть и побольше';
    }
  }
}