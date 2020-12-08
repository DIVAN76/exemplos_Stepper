import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();

}

class _MyApp extends State {
  var _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "flutter 01" ,
        home: Scaffold(
            appBar: AppBar(title: Text("flutter 001")) ,
            body: Stepper(
                type: StepperType.vertical ,
                currentStep: _currentStep ,

                onStepContinue: _currentStep < 2 ?
                    () => setState(() => _currentStep += 1) : null ,
                onStepCancel: _currentStep > 0 ?
                    () => setState(() => _currentStep -= 1) : null ,

                steps: [
                  Step(title: Text("nivel 01") , subtitle:Text("subtitulos"), isActive: true ,
                      content: Text("ok ff"),


                  ),
        Step(title: Text("nivel 02") , isActive: true ,
              content: Text("ok ffssss")
        ),

                  Step(title: Text("nivel 03") , isActive: true ,
                      content: Text("333333")


                  ),
                ]

            )

        )
    );
    // TODO: implement build

  }


}

