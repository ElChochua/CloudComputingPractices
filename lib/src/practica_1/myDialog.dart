import 'package:flutter/material.dart';
showAlertDialog(BuildContext context, String msg, String title, String btnText, String btnCancel){
  Widget cancelBtn = ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Cancelar"));
  Widget okBtn = ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Aceptar"));
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      cancelBtn,
      okBtn,
    ],
  );
  showDialog(context: context, builder: (BuildContext context){
    return alert;
  }
  );
}