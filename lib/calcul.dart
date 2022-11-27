import 'package:flutter/material.dart';
double _currentValue=0;
class Calcul extends StatefulWidget {
  const Calcul ({super.key});



  @override
  State<Calcul> createState() => _calculState();
}
class _calculState extends State<Calcul>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // the App.build method, and use it to set our appbar title.
        title: Text("Check my health ")
    ),
    body:Column(children: [
      Expanded(child: Row(
        children: [
          Expanded(child: InkWell(
            child: Card(
              child: Column(
                children: [
                  Icon(Icons.female),
                  SizedBox(height: 30),
                  Text("Female")
                ],
              ),
            ),
          ))
       ,
          Expanded(child: InkWell(
            child: Card(
              child: Column(
                children: [
                  Icon(Icons.male),
                  SizedBox(height: 30),
                  Text("Male")
                ],
              ),
            ),
          ))],
      )),
      Expanded(child:Row(
        children: [
          Expanded(child: Card(
            child: Column(
              children: [
                main 
                Row(
                  children: [
                    Text("  "),
                    Text(_currentValue.toString(),style: TextStyle(fontSize: 20),),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape:RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                           thumbColor: Color.fromARGB(255, 9, 44, 61),
                           overlayColor: Colors.white,
                           inactiveTrackColor: Color(0xFF8D8E98),
                           ),
                          child: Slider(
                           value:_currentValue ,
                           min: 0,
                           max:1.80 ,
                           onChanged: (value) {
                             setState(() {
                               _currentValue = value;
                             },);
                           },))
                  ]
                ),
              ],
            ),
          ))
        ],
      ),
        )
      ],

      ),);



  }

  }