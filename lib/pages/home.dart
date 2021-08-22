import 'package:flutter/material.dart';
import 'package:flutter_app/pages/edit.dart';

class  Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
    refresh();

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
           title: Text('NOTES')
         ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Edit()));
        },
      ),
      body: loading? CircularProgressIndicator() : ListView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: 20,
        itemBuilder: (context,index) {
             return Card(
               color: Colors.yellow[100],
               child : ListTile(
                 title: Text('Title' + index.toString()),
                 subtitle: Text('Sample contents'),
               )
             );
        }
      ),
    );
    // Scaffold widgets are the root of our pages.
  }

  Future<void> refresh() async {
    await Future.delayed(Duration(seconds: 2));
      setState(() => loading = false);
  }


}
