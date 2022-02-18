import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department-FAMT',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.lightBlueAccent,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision And Mission",
                    style: TextStyle(color: Colors.white60),
                  ),
                ),
              ],
              onSelected: (value) => vision(context),
            ),
          ),
          title: Text(
              "Welcome To IT Department of Finolex Academy of Management and Technology, Ratnagiri"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Container(
              child: Column(
                children: [
                  Image.network(
                    'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.hfrcpune.org%2Fwp-content%2Fuploads%2F2019%2F12%2FFAMT-inner-page-resized.jpg&imgrefurl=https%3A%2F%2Fwww.hfrcpune.org%2Ffinolex-academy-of-management-and-technology-famt%2F&tbnid=5rtRFL1Euj2x1M&vet=12ahUKEwjaqoDUt4n2AhUL1HMBHcewCAcQMygGegQIARBE..i&docid=9IvwTq0xjQEl9M&w=1080&h=723&q=images%20of%20famt%20lab&ved=2ahUKEwjaqoDUt4n2AhUL1HMBHcewCAcQMygGegQIARBE',
                    height: 350,
                    width: 800,
                  ),
                 Text('Sensor Lab'),
                    RaisedButton(
                      child: Text('Visit'),
                      onPressed: () => Sensor(context),
                    ),
                    
                Text('BI Lab'),
                    RaisedButton(
                      child: Text('Visit'),
                      onPressed: () => BI(context),
                    ),
                    
                    Text('Web Lab'),
                    RaisedButton(
                      child: Text('Visit'),
                      onPressed: () => Web(context),
                    ),
                    
                   Text('MAD and PWA Lab'),
                    RaisedButton(
                      child: Text('Visit'),
                      onPressed: () => MAD(context),
                    ),
                    
                   Text('DS Lab'),
                    RaisedButton(
                      child: Text('Visit'),
                      onPressed: () => DS(context),
                    ),
                    
                RaisedButton(
                  child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'Address: FAMT, P- 60, P- 60/1, MIDC, Mirjole Block, Ratnagiri - 415639\n\nPhone No: 7559463770'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void Sensor(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Sensor Lab'),
          content: Column(
            children: [
              Image.network(
                'data:image/jpeg;base64,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',
                height: 350,
              ),
              // Text("Hello"),
              Text("Lab Objectives:  Learn various communication technologies, Microcontroller boards and sensors.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void BI(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To BI Lab'),
          content: Column(
            children: [
              Image.network(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.contractpharma.com%2Fissues%2F2021-01-01%2Fview_features%2Fbusiness-intelligence-for-and-from-the-lab%2F&psig=AOvVaw3OExGOcQEQ259j_fkqciM3&ust=1645277176843000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKCOs6CtifYCFQAAAAAdAAAAABAD',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Lab Objectives: To introduce the concept of data Mining as an important tool for enterprise data management and as a cutting-edge technology for building competitive advantage",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void Web(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To Web Lab'),
          content: Column(
            children: [
              Image.network(
                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages-eu.ssl-images-amazon.com%2Fimages%2FI%2F41A0kz6DMZL._SR600%252C315_PIWhiteStrip%252CBottomLeft%252C0%252C35_SCLZZZZZZZ_FMpng_BG255%252C255%252C255.jpg&imgrefurl=https%3A%2F%2Fwww.amazon.in%2FWeb-Programming-Lab-Manual-15CS55P-ebook%2Fdp%2FB083D4PSML&tbnid=GkSN49WogWTCaM&vet=12ahUKEwitubzhrYn2AhXIQ2wGHQvhC1QQMygMegUIARDTAQ..i&docid=dnVXiyfPoLenhM&w=600&h=350&q=images%20of%20web%20lab&hl=en&ved=2ahUKEwitubzhrYn2AhXIQ2wGHQvhC1QQMygMegUIARDTAQ',
                height: 350,
              ),
              // Text("Hello"),
              Text(
                "Lab Objectives:  Open Source Tools for Web Analytics and Semantic Web.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void MAD(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To MAD and PWA Lab'),
          content: Column(
            children: [
              Image.network(
                'https://www.google.com/imgres?imgurl=https%3A%2F%2F5.imimg.com%2Fdata5%2FMQ%2FMC%2FGLADMIN-63939277%2Fmobile-application-development-program-500x500.png&imgrefurl=https%3A%2F%2Fwww.indiamart.com%2Fproddetail%2Fmobile-application-development-program-19279664388.html&tbnid=wALrGOetG3bWwM&vet=12ahUKEwi58Kyeron2AhVrXmwGHeG8D2gQMygAegUIARCjAQ..i&docid=wFmgNObiTD7LsM&w=499&h=307&q=images%20of%20Mobile%20application%20development%20lab&hl=en&ved=2ahUKEwi58Kyeron2AhVrXmwGHeG8D2gQMygAegUIARCjAQ',
                height: 350,
              ),
              // Text("Hello"),
              Text("Lab Objectives:  Learn the basics of the Flutter framework",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void DS(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome To DS Lab'),
          content: Column(
            children: [
              Image.network(
                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.imperial.ac.uk%2FImageCropToolT4%2FimageTool%2Fuploaded-images%2Fshutterstock_319414127--tojpeg_1481218010325_x1.jpg&imgrefurl=https%3A%2F%2Fwww.imperial.ac.uk%2Fdata-science%2Fresearch%2Fmultidisciplinary-labs%2F&tbnid=p3ZAh5QqC7Z5bM&vet=12ahUKEwjh1eXaron2AhVDQWwGHWZZCHAQMygGegUIARDEAQ..i&docid=HVJtHBtSG-Fx_M&w=447&h=293&q=images%20of%20data%20science%20lab&hl=en&ved=2ahUKEwjh1eXaron2AhVDQWwGHWZZCHAQMygGegUIARDEAQ',
                height: 350,
              ),
              // Text("Hello"),
              Text("Lab Objectives: To know the fundamental concepts of data science and analytics",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void vision(BuildContext context) {
    print("Vison and Mission");
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision of Finolex Academy of Management and Technology'),
          content: Column(
            children: [
              Image.network(
                'https://www.google.com/search?client=ms-android-oppo&biw=360&bih=668&tbm=isch&sxsrf=APq-WBvx0p0F82SUUIeAj-xAcg8K4QHWgw%3A1645021788410&sa=1&q=famt+full+name+with+logo&oq=famt+full+name+with+logo&aqs=mobile-gws-lite..#',
                height: 350,
              ),
              Text(
                  "Vision:  The academy aspires to nurture students as leaders who are in tune with global trends, equipped with engineering knowledge and practical skills, to excel in creativity and innovation in order to play their part in technological advancement of the nation."),
              Text(
                  "Mission: To become foremost seat of advanced technical learning as a center of excellence in the region.")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}
  