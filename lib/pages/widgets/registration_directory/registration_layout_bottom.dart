import 'package:flutter/material.dart';

class LayoutBottom extends StatelessWidget{
  const LayoutBottom({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),
      child: Column(
        children: [
          SizedBox(height: 20,),
          RegistrationButton(),
          SizedBox(height: 15,),
          Text("После регистрации вы получите доступ ко всем возможностям VK ID", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[600]),),
          Text("Узнать больше", textAlign: TextAlign.center,),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ),
          minimumSize: MaterialStateProperty.all(Size(double.infinity, 56))
        ),
        onPressed: () {},
        child: Text("Зарегистрироваться", style: TextStyle(color: Colors.white),)
    );
  }
}