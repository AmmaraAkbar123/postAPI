import 'package:apipost/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController phoneEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType:TextInputType.number,
              controller: phoneEditingController,
              // maxLength: 11,
              decoration: InputDecoration(
                hintText: "Phone number",
              ),
            ),
            SizedBox(height: 20,),
             Consumer<PostProvider>(
               builder: (context,postprovider,child) {
                 return ElevatedButton(onPressed: ()=> postprovider.postApiData(phoneEditingController.text), child: Text("Continue"));
               }
             )
          ],
        ),
      ),
    );
  }
}