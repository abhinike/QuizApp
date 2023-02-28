

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class OptionButton extends StatefulWidget {
  String text ;
   OptionButton({Key? key, required this.text}) : super(key: key);

  @override
  State<OptionButton> createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(22, 12, 22, 12),
      child: Center(
        child: ElevatedButton(
            onPressed: (){},

            child: Container(
              margin: EdgeInsets.all(4),
              child: Center(
                child: Row(
                  
                  children: [
                    Checkbox(value: false, onChanged: (value){}),
                    Text(widget.text)

                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
