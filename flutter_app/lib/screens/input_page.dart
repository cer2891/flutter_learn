import 'package:bmi_calculator/component/iconConten.dart';
import 'package:bmi_calculator/constant.dart';
import 'file:///E:/flutter_proj/learn_udemy/flutter_app/lib/screens/result_page.dart';
import 'file:///E:/flutter_proj/learn_udemy/flutter_app/lib/component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///E:/flutter_proj/learn_udemy/flutter_app/lib/component/Button.dart';
import 'package:bmi_calculator/calcul.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int height = 180;
  int weight = 60;
  int age =19 ;
  // Color maleCardColour = inactivCardColor;
  // Color femaleCardColour = inactivCardColor;
  //
  // // 1 - male, 2 - female
  // void updateColour(Gender selectGender) {
  //   //male card press
  //
  //   if (selectGender == Gender.male) {
  //     if (maleCardColour == inactivCardColor) {
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactivCardColor;
  //     }
  //   } else {
  //     maleCardColour = inactivCardColor;
  //   }
  //
  //   if (selectGender == Gender.female) {
  //     if (femaleCardColour == inactivCardColor) {
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactivCardColor;
  //     }
  //   } else {
  //     femaleCardColour = inactivCardColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('КАЛЬКУЛЯТОР ВЕСА'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                // child: GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       selectGender=Gender.male;
                //     });
                //   },
                child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colour: selectGender == Gender.male
                        ? kActiveCardColour
                        : kInactivCardColor,
                    cardChild: iconConten(
                      iconCard: FontAwesomeIcons.mars,
                      stringCard: 'Мужик',
                    )),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  colour: selectGender == Gender.female
                      ? kActiveCardColour
                      : kInactivCardColor,
                  cardChild: iconConten(
                      iconCard: FontAwesomeIcons.venus, stringCard: 'Женщина'),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Рост',
                        style: kLabelStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            height.toString(),
                            style: kStyleNumber,
                          ),
                          Text(
                            'cm',
                            style: kLabelStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: Color(0x1f0015ff),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          activeColor: Color(0xffeb1111),
                          inactiveColor: Color(0xff8d8e98),
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                          min: 120,
                          max: 230,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Вес',
                          style: kLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kStyleNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtom(
                              onPress: (){
                                setState(() {
                                  if(weight>40)
                                    weight-=1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            RoundIconButtom(
                              onPress: (){
                                setState(() {
                                  if(weight<=100)
                                    weight+=1;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Возраст',
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kStyleNumber,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButtom(
                              onPress: (){
                                setState(() {
                                  if(age>10)
                                    age-=1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            RoundIconButtom(
                              onPress: (){
                                setState(() {
                                  if(age<=100)
                                    age+=1;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            OnTap: (){
              CalculatorBMI calc= CalculatorBMI(height: height,weight: weight);

              Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(
                bmiResult: calc.calculBMI(),
                resultText: calc.getResult(),
                intepret: calc.getIntepret(),
              )));
            },
            buttonText: 'Расчет BMI',
          ),
        ],
      ),
      // body: Center(
      //   child: Text('Body Text'),
      // ),
      // floatingActionButton: Theme(
      //   data: ThemeData( accentColor: Colors.purpleAccent),
      //   child: FloatingActionButton(
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}



