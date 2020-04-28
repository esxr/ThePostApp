import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

// Fortunately this function will NEVER be used - Pranav
Function openPDFView(link, context) {
  return () {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PDFViewContainer(link)),
    );
  };
}

// To be used for 'inline PDFs'
// Very rudimentary and questionable method of implementation
class PDFViewContainer extends StatefulWidget {
  final url;

  PDFViewContainer(this.url);

  @override
  createState() => _PDFViewContainerState(this.url);
}

class _PDFViewContainerState extends State<PDFViewContainer> {
  var _url;

  String path;
  String filename = UniqueKey().toString();

  _PDFViewContainerState(this._url);

  @override
  void initState() {
    loadPdf();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$filename.pdf');
  }

  Future<File> writeCounter(Uint8List stream) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsBytes(stream);
  }

  Future<Uint8List> fetchPost() async {
    final response = await http.get(_url);
    final responseJson = response.bodyBytes;
    return responseJson;
  }

  loadPdf() async {
    writeCounter(await fetchPost());
    path = (await _localFile).path;

    if (!mounted) return;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (path == null)
          ? Center(child: CircularProgressIndicator())
          : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: PdfViewer(
                    filePath: path,
                  ),
                )
              ],
            ),
    );
  }
}
