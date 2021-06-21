import 'package:flutter/material.dart';
import 'package:contact_app/pages/add_contact_page.dart'
import 'package:contact_app/components/contact_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Contact app',
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.sort,
            color: Colors.grey[800],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications_none,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Chercher un contact',
                  hintStyle: TextStyle(fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0, 
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.only(right: 30,),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(right: 16.0, left: 24.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: buildContactWidget(),
              ),
            ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () => MaterialPageRoute(builder: (context) => AddContactPage(),
      child: Icon(Icons.add),
    ),
    );
  }

  List<Widget> buildContactWidget() {
    List<Widget> list = [];
    for (var i = 0; i < 10; i++) {
      list.add(ContactWidget(name: "Arthur", number: "+33 23 45 56 78", imageUrl: "assets/images/portrait1.jpeg",));
    }
    return list;
  }
}
