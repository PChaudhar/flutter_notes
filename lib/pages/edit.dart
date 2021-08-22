import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/loading.dart';

class Edit extends StatefulWidget {
  @override
  EditState createState() => EditState();

}

class EditState extends State<Edit> {

  TextEditingController title, content;
  bool loading = false;


  @override
  void initState() {
    super.initState();
    title = new TextEditingController(text: 'Title');
    content = new TextEditingController(text: 'Description..');
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('NEW'),
       // actions: {
       //   IconButton(
       //     icon: Icon(Icons.save),
       //     onPressed: _() {
       //   setState(() => loading = true);
       //   save();
       //   }}
     ),
     body: loading? Loading() :  ListView(
       padding: EdgeInsets.all(12.0),
       children: [
         TextField(controller: title),
         SizedBox(height: 12.0),
         TextField(
             controller: content,
             maxLines: 27,
         ),
       ],
     ),


   );
  }

  Future<void> refresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() => loading = false);
  }

}