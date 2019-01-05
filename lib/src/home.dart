import 'package:flutter/material.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView(
        children: <Widget>[
          _buildChild(context),
        ],
      )
    );
  }
  _buildChild(context) {
    TextStyle titleTextStyle = Theme.of(context).textTheme.title;
    TextStyle descriptionTextStyle = Theme.of(context).textTheme.body1;
    return Container(
      height: 300,
      child: Padding(padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Image.asset(""),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5.0),
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("title"),
                            Text("5"),
                          ],
                        )
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text('책 설명', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("지은이", style: descriptionTextStyle,),
                          Text("지은이", style: descriptionTextStyle,),
                          Text("지은이", style: descriptionTextStyle,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}