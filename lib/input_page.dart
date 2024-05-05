import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const appBarBackgroundColor = Color(0xFF222831);
const activeCardColor = Color(0xFF30475E);
const bottomContainerColor = Color(0xFFF05454);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: const Text('REY BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:  activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              colour:  activeCardColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour:  activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour:  activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
