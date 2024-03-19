import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onSaved: (pin1){},
                onChanged: (value){
                  if(value.length==1){
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  hintText: "*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  
                ),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
                ],
              textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onSaved: (pin2){},
                onChanged: (value){
                  if(value.length==1){
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  hintText: "*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  
                ),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
                ],
              textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onSaved: (pin3){},
                onChanged: (value){
                  if(value.length==1){
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  hintText: "*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  
                ),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
                ],
              textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onSaved: (pin4){},
                onChanged: (value){
                  if(value.length==1){
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: InputDecoration(
                  hintText: "*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  
                ),
                style: Theme.of(context).textTheme.headline6,
                keyboardType: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
                ],
              textAlign: TextAlign.center,
              ),
            )
          
          ],
        )),
      ),
    );
  }
}