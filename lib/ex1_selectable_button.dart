// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child:Column(
            mainAxisSize:  MainAxisSize.min,
            children:const[
              SelectableButton(),
              SelectableButton(),
              SelectableButton(),
              SelectableButton(),

            ],
          ),

        
        ),
      ),
    ));

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
  });

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {

  bool isSelected =false;
  String get buttonText => isSelected ? "Selected" :"Not Selected";
  Color get butonTextColor => isSelected ? Colors.white : Colors.black;

  Color get buttonBackgroundColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 400,
          height: 100,
          child: ElevatedButton(
              onPressed: ()  {

                setState((){
                  isSelected=!isSelected;
                });
              },
              style: ElevatedButton.styleFrom( 
                backgroundColor: buttonBackgroundColor,
                foregroundColor: butonTextColor,
              ),
              child: Center(
                child: Text(buttonText),
              )),
        );
  }
}
