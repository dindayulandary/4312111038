import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage7(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Text(
        "DINDA YULANDARY",
        style: TextStyle(
            color: Colors.blue,
            backgroundColor: Colors.pink,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
            ),
            Column(
              children: <Widget>[Icon(Icons.phone), Text('Phone')],
            ),
            Column(
              children: <Widget>[Icon(Icons.book), Text('Book')],
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage3 extends StatelessWidget {
  const MyHomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple),
            // color: Colors.purple,
            child: Text(
              'DINDA YULANDARY',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )));
  }
}

class MyHomePage4 extends StatelessWidget {
  const MyHomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SizedBox"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "A",
              style: TextStyle(fontSize: 30.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "B",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ));
  }
}

class MyHomePage5 extends StatelessWidget {
  const MyHomePage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons"),
        ),
        body: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              child: Text("Raised Button"),
              onPressed: () {},
            ),
            MaterialButton(
              color: Colors.lime,
              child: Text("Material Button"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text("FlatButton Button"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {},
            ),
          ],
        ));
  }
}

class MyHomePage6 extends StatelessWidget {
  const MyHomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextFormField"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}

class MyHomePage7 extends StatelessWidget {
  const MyHomePage7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DINDA YULANDARY')),
      body: Container(
        color: Colors.red,
        child: MaterialButton(
          child: Text("Alert Dialog"),
          textColor: Colors.white,
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return GiffyDialog.image(
                      Image.network(
                        'assets/google-jacket.gif',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        'Men Wearing Jakets',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w100),
                      ),
                      content: Text(
                        'This is a men wearning jakets',
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'CANCEL'),
                          child: const Text(
                            'CANCEL',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text(
                            'OK',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]);
                });
          },
        ),
      ),
    );
  }
}
