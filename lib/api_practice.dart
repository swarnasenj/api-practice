import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nestaed_json/Models/nested_model.dart';
import 'package:http/http.dart' as http;
import 'package:nestaed_json/show_details.dart';

class ApiPractice extends StatefulWidget {
  const ApiPractice({Key? key}) : super(key: key);

  @override
  _ApiPracticeState createState() => _ApiPracticeState();
}

class _ApiPracticeState extends State<ApiPractice> {
  List<Nested_model> modelList = [];
  Future<List<Nested_model>> getApiData() async {
    final response = await http
        .get(Uri.parse('https://testapi.saxonmarket.com/categories?tree=true'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        modelList.add(Nested_model.fromJson(i));
      }
      return modelList;
    } else {
      return modelList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Container(
          alignment: Alignment.center,
          child: Text("API Example")
          ),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getApiData(),
            builder: (context, AsyncSnapshot<List<Nested_model>> snapshot) {
              return ListView.builder(
                  itemCount: modelList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) =>
                                        Details(modelList[index])));
                          });
                        },
                        child: Container(
                          height: 50,
                          child: Center(
                              child: Text(
                            snapshot.data![index].name.toString(),
                            style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    );
                  });
            },
          ))
        ],
      ),
    );
  }
}
