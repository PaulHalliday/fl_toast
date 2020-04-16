import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _messageTextEditingController;

  GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();

    _formKey = GlobalKey<FormState>();
    _messageTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Toast"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: _messageTextEditingController,
            ),
            FlatButton(
              onPressed: () => Fluttertoast.showToast(
                msg: _messageTextEditingController.text,
                timeInSecForIosWeb: 10,
                toastLength: Toast.LENGTH_LONG,
                webShowClose: true,
                backgroundColor: Colors.green,
              ),
              child: Text("Show Toast"),
            ),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _messageTextEditingController.dispose();
    super.dispose();
  }
}
