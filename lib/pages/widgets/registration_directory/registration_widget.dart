import 'package:flutter/material.dart';
import 'package:vk_first_page/pages/widgets/registration_directory/registration_layout_bottom.dart';
import 'package:vk_first_page/pages/widgets/registration_directory/registration_layout_top.dart';

class RegistrationWidget extends StatefulWidget{
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();

}

class _RegistrationWidgetState extends State<RegistrationWidget> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LayoutTop(),
              SizedBox(height: 20,),
              LayoutBottom()
            ],
          ),
        ),
      ),

    );
  }
}




