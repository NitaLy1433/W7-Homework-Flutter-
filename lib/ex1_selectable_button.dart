// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: SelectableButton(),
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
                backgroundColor: isSelected ? Colors.blue: Colors.lightBlue.shade50,
                foregroundColor: isSelected ? Colors.white : Colors.black,
              ),
              child: Center(
                child: Text(
                  isSelected? "Selected":"Not Selected",
                ),
              )),
        );
  }
}
