



import 'package:flutter/material.dart';

class LayoutTop extends StatelessWidget{
  const LayoutTop({super.key});

  @override
  Widget build(BuildContext context){

    final mailTextController = TextEditingController();

    String getMailTextController(String a){
      return mailTextController.text;
    }




    void resetPassword() {}

    final textFieldDecoration = InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        hintText: " Телефон или почта",
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.black)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.blue)
        )
    );


    return Container(
      height: 550,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white,),
      child: Column(
        children: [
          SizedBox(height: 140,),
          Align(
              alignment: Alignment.center,
              child: Text("Вход ВКонтакте", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),)
          ),
          SizedBox(height: 25),
          TextField(
            controller: mailTextController,
            decoration: textFieldDecoration,

          ),
          SizedBox(height: 20),
          Row(
            children: [
              CheckboxWidgetSaveSign(),
              Text("Сохранить вход?")
            ],
          ),
          SizedBox(height: 20),
          CustomButtonInputVKAccount(),
          SizedBox(height: 20),
          Text("или", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 16),),
          SizedBox(height: 20),
          ButtonWidgetQR()
        ],
      ),
    );
  }
}

class ButtonWidgetQR extends StatelessWidget {
  const ButtonWidgetQR({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: OutlinedButton(onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
                minimumSize: MaterialStateProperty.all(Size(100, 56))
            ),
            child: Row(
              children: [
                Icon(Icons.qr_code, color: Colors.black,),
                SizedBox(width: 120,),
                Text("QR-код", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18))],)
        )
    );
  }
}

class CheckboxWidgetSaveSign extends StatefulWidget{
  const CheckboxWidgetSaveSign({super.key});

  @override
  State<CheckboxWidgetSaveSign> createState() => _CheckboxWidgetSaveSignState();
}

class _CheckboxWidgetSaveSignState extends State<CheckboxWidgetSaveSign>{
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        checkColor: Colors.white,
        value: isChecked,
        onChanged: (bool? value){
          setState(() {
            isChecked = value!;
          });
        }
    );
  }
}

// кнопка входа, сюда надо авторизацию
class CustomButtonInputVKAccount extends StatefulWidget {
  CustomButtonInputVKAccount({super.key});

  @override
  State<CustomButtonInputVKAccount> createState() => _CustomButtonInputVKAccount();
}

class _CustomButtonInputVKAccount extends State<CustomButtonInputVKAccount> {



  void auth() {
    final mail = "fdf";
    if (mail == "a") print("jjjjjjjjjjjjjjjjjdddddddddddddddddddddddjjjjjj");
    else print("adaddadasdadadadasdasdasdadasdasdas");
  }

  TextStyle textStyleButtonInput = TextStyle(color: Colors.white, fontSize: 18);

  @override
  Widget build(BuildContext context) {



    void pressButton() {
      setState(() {

      });
    }

    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)),
            minimumSize: MaterialStateProperty.all(Size(100, 56)),),
          child: Text("Войти", style: textStyleButtonInput ),
    )
    );

  }
}


class TextForButton extends StatelessWidget {
  const TextForButton({
    super.key,
    required this.textButton,
    required this.colorText
  });

  final textButton;
  final colorText;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(textButton,
          style: TextStyle(color: colorText, fontSize: 20),
        )
    );
  }
}
