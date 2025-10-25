import 'package:flutter/material.dart';

class FList extends StatefulWidget {
   FList({super.key});

  @override
  State<FList> createState() => _FListState();
}

class _FListState extends State<FList> {
  TextEditingController controller = TextEditingController();
  List name = ["Faisal","kamal","karim","rana","Rahim"];

  List number = ["017","015",'0167','013',"108"];

  List emt =[1];

  void sc( String nu){
    emt = number.where((velue)=> velue == nu).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('List View'),
    ),
      body: Column(
        children: [
          
          TextField(
          controller: controller,
            decoration: InputDecoration(
border: OutlineInputBorder()
            ),
        ),
          ElevatedButton(onPressed: (){
            sc(controller.text);
          }, child: Text("Click")),
          Text(emt[0].toString()),
          Expanded(
            child: ListView.builder(
                itemCount:name.length,
                itemBuilder:(context,index){
                return Card(
                  child: ListTile(
                    title: Text(name[index]),
                  subtitle: Text(number[index]),
                  leading: Icon(Icons.phone),
                    trailing: Icon(Icons.delete,color: Colors.red,),
                  ),
                );
                }),
          ),

        ],
      ),
    );
  }
}
