import 'package:flutter/material.dart';
import 'package:fluttertestperron/src/practica_1/myDialog.dart';
class UserData extends StatefulWidget{
  const UserData({super.key});

  @override
  _UserDataState createState() => _UserDataState();


}
class _UserDataState extends State<UserData>{
  var _name;
  var _phone;
  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/rebels.jpeg"),
          SizedBox(height: 10.0),
           TextField(
             controller: nameCtrl,
             keyboardType: TextInputType.name,
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(5),
               hintText: "Name",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10)
               ),
             ),
           ),
          TextField(
            controller: phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: "Phone",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: (){
              setState(() {
                _name = nameCtrl.text;
                _phone = phoneCtrl.text;
                showAlertDialog(context, "El usuario $_name con el telefono $_phone ha sido registrado", "Data Submited", "Ok", "Cancelar");
              });
            },
            child: Text("Submit"),
          ),

        ],
      )
    );
  }

}