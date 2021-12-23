import 'package:flutter/material.dart';
import 'package:nestaed_json/Models/nested_model.dart';

class Details extends StatefulWidget {
  Nested_model value;
  Details(this.value);
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: //Image.network(widget.value.image!)
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        widget.value.id.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  widget.value.level.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
                alignment: Alignment.center,
                child: Text(
                  widget.value.image.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 400,
              child: ListView.builder(
                  itemCount: widget.value.children!.length,
                  itemBuilder: (context, index) {                  
                    return ListTile(
                      title: Text(widget.value.children![index].name.toString()),
                      
                    );
                  },
                  shrinkWrap: true,),
            ),
          ],
        ),
      ),
    );
  }
}
