import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:ostadproject/threeassignment/productviewpage.dart';
import 'productmodel.dart';

class ListViewPage extends StatefulWidget {
  String price;
  String id;
  String url;
  String name;

  ListViewPage({Key? key,
   required this.name,
    required this.id,
    required this.price,
    required this.url
  }) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  int total = 0;
  Future<List<ProductDataModel>> ReadJsonData() async {
    //read json file
    final jsondata = await rootBundle.rootBundle.loadString('jsonfile/productmodel.json');
    //decode json data as list
    final list = json.decode(jsondata) as List<dynamic>;

    //map json and initialize using DataModel
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View form json file'),
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data){
          if(data.hasError){
            return Center(
              child: Text('${data.error}'),);
          }else if(data.hasData){
            var listdata = data.data as List<ProductDataModel>;
            return ListView.builder(
              itemCount: listdata == null? 0 : listdata.length,
                itemBuilder: (context, index){
                
                  return Card(
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>
                            ProductViewPage(name: listdata[index].name.toString(),
                                id: listdata[index].id.toString(),
                                price: listdata[index].price.toString(),
                                url: listdata[index].imageURL.toString())));
                      },
                      title: Text(listdata[index].name.toString()),
                      trailing: Text(listdata[index].price.toString()),
                      leading: Text(listdata[index].id.toString()),

                    ),
                  );

                });
          }
          else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('data',style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
