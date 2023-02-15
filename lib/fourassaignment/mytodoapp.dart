import 'package:flutter/material.dart';
import 'package:ostadproject/fourassaignment/style.dart';

class MyToDoApp extends StatefulWidget {
  const MyToDoApp({Key? key}) : super(key: key);

  @override
  State<MyToDoApp> createState() => _MyToDoAppState();
}

class _MyToDoAppState extends State<MyToDoApp> {


  List TodoList =[];

  String Item ="";


  MyInputOnchange (content){
    setState(() {
      Item = content;
    });
  }

  AddItem(){
    setState(() {
      TodoList.add({"item": Item});
    });
  }

  RemoveItem(index){
    TodoList.removeAt(index);
    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 20,
                child: Row(
                  children: [
                    Expanded(
                      flex:70,
                        child: TextField(
                          onChanged: (content){
                            MyInputOnchange(content);
                          },
                          decoration: AppInputDecoration("List Item"),
                        )
                    ),
                    Expanded(
                      flex: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            onPressed: (){
                              AddItem();
                            },
                            child: Text('Add to list'),
                            style: AppButtonStyle(),
                          ),
                        )
                    ),

                  ],
                )
            ),
            Expanded(

                flex: 80,
                child: ListView.builder(
                  itemCount: TodoList.length,
                    itemBuilder: (context, index){
                    return Card(
                      child: SizeBox50(
                        Row(
                          children: [
                            Expanded(
                                flex:80,
                                child: Text(TodoList[index]["item"])),
                            Expanded(
                                flex: 20,
                                child: TextButton(
                              onPressed: (){
                                RemoveItem(index);
                              },
                              child: Icon(Icons.delete_forever_outlined,color: Colors.red,),
                            )

                            ),

                          ],
                        )
                      )
                    );
                    })
            ),

          ],
        ),
      ),
    );
  }
}
