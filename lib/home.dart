
import 'package:flutter/material.dart';







class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   

 


  TextEditingController consumoCervejaria = TextEditingController();
  TextEditingController consumoManu = TextEditingController();
  TextEditingController consumoLenon = TextEditingController();
  TextEditingController preco = TextEditingController();


  String textoResultadoCervejaria = '';
  String textoResultadoManu = '';
  String textoResultadoLenon = '';


  


  void calcularCervejaria(){
    double cons = double.parse(consumoCervejaria.text);
    double pre = double.parse(preco.text);


    double resultado = cons * pre;

    setState(() {
      textoResultadoCervejaria =
          'CERVEJARIA: ' + resultado.toStringAsPrecision(4) + ' Reais';
    });
  }
  void calcularManu(){
    double cons = double.parse(consumoManu.text);
    double pre = double.parse(preco.text);


    double resultado = cons * pre;

    setState(() {
      textoResultadoManu =
          'MANU: ' + resultado.toStringAsPrecision(4) + ' Reais';
    });
  }
  void calcularLenon(){
    double cons = double.parse(consumoLenon.text);
    double pre = double.parse(preco.text);


    double resultado = cons * pre;

    setState(() {
      textoResultadoLenon =
          'LENON: ' + resultado.toStringAsPrecision(4) + ' Reais';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculadora de Consumo'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.cyanAccent, Color.fromARGB(115, 250, 163, 2)])),

          child: ListView(

             padding: const EdgeInsets.all(16),
            children: [

              TextField(
                controller: consumoCervejaria,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Digite o consumo CERVEJARIA'),),SizedBox(height: 10,),

              TextField(
                controller: consumoManu,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Digite o consumo MANU'),),SizedBox(height: 10,),

              TextField(
                controller: consumoLenon,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Digite o consumo LENON'),),SizedBox(height: 10,),

                  

               TextField(
                controller: preco,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Digite o valor do kW'),),

                SizedBox(height: 10,),


                 TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.yellowAccent),
              onPressed: () {
                
              
              },
              child: Text('Calcular'),
            ),
            Text(style:TextStyle(backgroundColor: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),textoResultadoCervejaria),SizedBox(height: 10,),
            Text(style:TextStyle(backgroundColor: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),textoResultadoManu),SizedBox(height: 10,),
            Text(style:TextStyle(backgroundColor: Colors.yellow,fontSize: 20,fontWeight: FontWeight.bold),textoResultadoLenon),SizedBox(height: 10,),

            
          ])),

        


      
    );
    

    


    

    
    

    

  }
  
}