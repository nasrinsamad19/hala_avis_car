//App hang on same device
import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wakelock/wakelock.dart';

var dio = Dio();
final url = "http://www.africau.edu/images/default/sample.pdf";

class accident extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<accident> {

  String remotePDFpath = "";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void getPermission() async {
    print("getPermission");
    Map<PermissionGroup, PermissionStatus> permissions =
    await PermissionHandler().requestPermissions([PermissionGroup.storage]);
  }

  Future download(Dio dio, String url, String savePath) async {
    try {
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),
      );
      print(response.headers);
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (e) {
      print(e);
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      ((received / total * 100).toStringAsFixed(0) + "%");
    }
  }

  @override
  void initState() {
    super.initState();
    getPermission();
    createFileOfPdfUrl().then((f) {
      setState(() {
        remotePDFpath = f.path;
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    print("Start download file from internet!");
    try {
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      print("Download files");
      print("${dir.path}/$filename");
      File file = File("${dir.path}/$filename");
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Accident Report'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Colors.white,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
            ),
                child: Column(
                  children: [
                    RichText(
                     text: TextSpan(
                       text: 'Report ID: ',style: TextStyle(
                         color: Colors.black
                     ),
                       children: [
                         TextSpan(
                         text: 'AR7',style: TextStyle(
                         color: Colors.black,
                           fontWeight: FontWeight.bold
                     ),
                         ),
                       ]
                     ),
                      ),
                    Container(
                      //padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child:Container(
                          height: 1.0,
                          //width: 370.0,
                          color: Colors.black12,
                        ),),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Date',textAlign: TextAlign.center,),
                            Text('01-01-2021')
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Time'),
                            Text('10:30')
                          ],
                        )
                      ],
                    ),
                    Container(
                      //padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child:Container(
                          height: 1.0,
                          //width: 370.0,
                          color: Colors.black12,
                        ),),
                    ),
                    Text('Location'),
                    Text('601, AL Dhar',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Container(
                      //padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child:Container(
                          height: 1.0,
                          //width: 370.0,
                          color: Colors.black12,
                        ),),
                    ),
                    Text('Third party hit my vehicle from back.'),
                    Container(
                      //padding: EdgeInsets.only(top: 670,left: 10,right: 10),
                      child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child:Container(
                          height: 1.0,
                          //width: 370.0,
                          color: Colors.black12,
                        ),),
                    ),
                    Text('Police Report'),
                    GestureDetector(
                      onTap: () {
                        Wakelock.enable();
                        if (remotePDFpath != null || remotePDFpath.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PDFScreen(path: remotePDFpath),
                            ),
                          );
                        }
                      },
                      child: Container(
                        height: 90,
                        color: Colors.black12,
                        child:Column(
                          children: [
                            Text('preview',textAlign: TextAlign.center,),
                            Spacer(),
                            RaisedButton(
                                color: Colors.black,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Download",style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    Icon(Icons.file_download,color: Colors.white,)
                                  ],
                                ),
                                onPressed:()async {
                                  String path =
                                  await ExtStorage.getExternalStoragePublicDirectory(
                                      ExtStorage.DIRECTORY_DOWNLOADS);
                                  //String fullPath = tempDir.path + "/boo2.pdf'";
                                  String fullPath = "$path/test.pdf";
                                  print('full path ${fullPath}');
                                  download(dio, url, fullPath);
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
        ),
      ),
    );
  }
}

class PDFScreen extends StatefulWidget {
  final String path;

  PDFScreen({Key key, this.path}) : super(key: key);

  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> with WidgetsBindingObserver {
  final Completer<PDFViewController> _controller =
  Completer<PDFViewController>();
  int pages = 0;
  int currentPage = 0;
  bool isReady = false;
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Document"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          PDFView(
            filePath: widget.path,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: true,
            pageSnap: true,
            defaultPage: currentPage,
            fitPolicy: FitPolicy.BOTH,
            preventLinkNavigation:
            false, // if set to true the link is handled in flutter
            onRender: (_pages) {
              setState(() {
                pages = _pages;
                isReady = true;
              });
            },
            onError: (error) {
              setState(() {
                errorMessage = error.toString();
              });
              print(error.toString());
            },
            onPageError: (page, error) {
              setState(() {
                errorMessage = '$page: ${error.toString()}';
              });
              print('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
              _controller.complete(pdfViewController);
            },
            onLinkHandler: (String uri) {
              print('goto uri: $uri');
            },
            onPageChanged: (int page, int total) {
              print('page change: $page/$total');
              setState(() {
                currentPage = page;
              });
            },
          ),
          errorMessage.isEmpty
              ? !isReady
              ? Center(
            child: CircularProgressIndicator(),
          )
              : Container()
              : Center(
            child: Text(errorMessage),
          )
        ],
      ),
      floatingActionButton: FutureBuilder<PDFViewController>(
        future: _controller.future,
        builder: (context, AsyncSnapshot<PDFViewController> snapshot) {
          if (snapshot.hasData) {
            return FloatingActionButton.extended(
              label: Text("Go to ${pages ~/ 2}"),
              onPressed: () async {
                await snapshot.data.setPage(pages ~/ 2);
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
