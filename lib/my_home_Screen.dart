import 'package:flutter/material.dart';

import 'component/component.dart';

class MyHomeScreen extends StatefulWidget {




  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  var oneItemController = TextEditingController();
  var twoItemController = TextEditingController();
  var threeItemController = TextEditingController();
  var fourItemController = TextEditingController();
  var fiveItemController = TextEditingController();
  var sixItemController = TextEditingController();
  var resalt =0.0;
  var task =0.0;
  var total =0.0 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Mama App"),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildTextFormFild(
                controller: oneItemController,
                lable: 'Item 1',),
              buildSizeBox(height: 10.0),
              buildTextFormFild(
                controller: twoItemController,
                lable: 'Item 2',),
              buildSizeBox(height: 10.0),
              buildTextFormFild(
                controller: threeItemController,
                lable: 'Item 3',),
              buildSizeBox(height: 10.0),
              buildTextFormFild(
                controller: fourItemController,
                lable: 'Item 4',),
              buildSizeBox(height: 10.0),
              buildTextFormFild(
                controller: fiveItemController,
                lable: 'Item 5',),
              buildSizeBox(height: 10.0),
              buildTextFormFild(
                controller: sixItemController,
                lable: 'Item 6',),
              buildSizeBox(height: 10.0),
              buildButton(
                onPressed: ()=> handleCalclate(),
                buttonName: Text('Calculate',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

              ),
              buildSizeBox(height: 10.0),
              buildCalcolateTextField(text: Text( "Total Amount ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  resaltText: Text("${resalt.toStringAsFixed(2)}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              buildSizeBox(height: 10.0),
              buildCalcolateTextField(text: Text("Tax                   ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                resaltText: Text("${task.toStringAsFixed(2)}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),

              buildSizeBox(height: 10.0),
              buildCalcolateTextField(text: Text("Total                ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                resaltText: Text("${total.toStringAsFixed(2)}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),

              buildSizeBox(height: 10.0),
              buildButton(buttonName: Text('Delete',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  onPressed: ()=> deleteCalclate(),),


            ],
          ),
        ),
      ),
    );
  }
  int? handleCalclate(){
   setState(() {
     double one = 0;
     double two = 0;
     double three = 0;
     double four = 0;
     double five = 0;
     double six = 0;

     one = oneItemController.text.isEmpty ? 0 : double.parse(oneItemController.text);
     two = twoItemController.text.isEmpty ? 0 : double.parse(twoItemController.text);
     three = threeItemController.text.isEmpty ? 0 : double.parse(threeItemController.text);
     four = fourItemController.text.isEmpty ? 0 : double.parse(fourItemController.text);
     five = fiveItemController.text.isEmpty ? 0 : double.parse(fiveItemController.text);
     six = sixItemController.text.isEmpty ? 0 : double.parse(sixItemController.text);
     resalt = one + two + three + four + five +six ;
     task = resalt * 0.09 ;
     total = resalt + task;
   });
    print(resalt.toStringAsFixed(2));
   print(task.toStringAsFixed(2));
  }

void deleteCalclate(){
 setState(() {
   oneItemController.text = "";
   twoItemController.text = "";
   threeItemController.text = "";
   fourItemController.text = "";
   fiveItemController.text = "";
   sixItemController.text = "";
   total =0;
   task =0 ;
   resalt = 0;
 });
}

}
