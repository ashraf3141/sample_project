import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PopupBox extends StatefulWidget {
  @override
  _PopupBoxState createState() => _PopupBoxState();
}

class _PopupBoxState extends State<PopupBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MedApps"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: RaisedButton(
            onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return Material(
                        type: MaterialType.transparency,
                        child: Container(
                          height: 500,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.all(20.0),
                              padding: const EdgeInsets.all(20.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  SizedBox(height: 10.0),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close,
                                      size: 40),
                                    ),
                                  ),
                                 const SizedBox(height: 10.0),
                                  Text(
                                    "MedApps User",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Medium"),
                                    textAlign: TextAlign.center,
                                  ),
                                  Divider(),
                                  SizedBox(height: 10.0),
                                 Container(
                                   height: 500,
                                     child: WebViewPage()),
                                 /* SizedBox(
                                    width: double.infinity,
                                    height: 50.0,
                                    // ignore: deprecated_member_use
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        side: BorderSide(
                                          width: 2,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(builder: (context) =>WebViewPage()));
                                      },
                                      child: Text('Google WebView',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Medium",
                                          )),
                                    ),
                                  ),*/
                                ],
                              ),
                            ),
                          ),
                        ));
                  },
                );
            },
            child: Text("Popup Dialog Box"),
          ),
        ),
      ),
    );
  }
}
class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://lenskart.com",
      withZoom: true,
      withLocalStorage: true,
      initialChild: Container(
      color: Colors.redAccent,
        child: const Center(
         child: Text("Loading...."),
        ),
      ),
    );
  }
}
