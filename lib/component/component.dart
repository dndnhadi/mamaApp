import 'package:flutter/material.dart';

Widget buildTextFormFild({
  int maxLineNumber = 1,
  var keyborardType = TextInputType.number,
  required TextEditingController controller,
  required String lable,
}) {
  return Container(
    height: 40.0,
    child: TextFormField(
      maxLines: maxLineNumber,
      keyboardType: keyborardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: lable,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    ),
  );
}

Widget buildButton({
  required Text buttonName,
  required  VoidCallback? onPressed,
})
{
  return Container(
    width: double.infinity,
    height: 35.0,
    color: Colors.blue,
    child: MaterialButton(
      onPressed: onPressed,
      child: buttonName,
    ),
  );
}


Widget buildSizeBox(
    {required var height}
    )
{
  return SizedBox(
    height: height,
  );
}


Widget buildCalcolateTextField({
  required Text text,
  required Text resaltText,

}){
  return      Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      text,
      Container(

        padding: EdgeInsets.all(5.0),
        child: resaltText,
        width: 170,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        ),
      ),
    ],
  );
}
