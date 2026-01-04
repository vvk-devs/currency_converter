  //1. Create a variable that stores the converted currency value 
  //2. Create a function that multipply the value given by the text field with 90
  //3. Create a variable that sotre the value 
  //4. display the variable

import 'package:flutter/material.dart';

class CurrencyHomePage extends StatefulWidget{
  const CurrencyHomePage({super.key});


  @override
  State createState() =>  _CurrencyConvertorMaterialPageState();
  
}



class _CurrencyConvertorMaterialPageState extends State<CurrencyHomePage>{
 double result =0; 
    final  TextEditingController textEditingController = TextEditingController();
    void convert(){
                      result =  double.parse(textEditingController.text) / 90   ;

                setState((){

                });
    }

void dispose(){
  textEditingController.dispose();
  super.dispose();
}
 

@override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 0, 0, 0),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(backgroundColor: Colors.blueGrey,
      centerTitle: true,
      title: Text('Currency Convertor',
      style: TextStyle(
      color: Colors.white),
      ),
      
      
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [           
          

            // int--> string we use .toString()
            // string --> int/double int.parse(stringvalue)
             Text(
            ' USD ${result != 0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            /// TEXT FIELD
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please Enter the amount of INR',
                  hintStyle: const TextStyle(color: Color.fromARGB(153, 0, 0, 0)),
                  prefixIcon: const Icon(Icons.currency_rupee),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            /// BUTTON
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                

                onPressed: convert,


                style: TextButton.styleFrom(
                  backgroundColor:  Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(180, 50),
                  
                  ),
                     child: const Text('Convert'),
                ),),
             
        
            
          ],
        ),
      ),
    );
  }
}
