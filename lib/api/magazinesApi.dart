import 'package:http/http.dart' as http;
import 'dart:convert';

// return List<Map<String, Object>>
Future<List<dynamic>> magazinesApi([filter]) async {
  List magazinesList = magazines['data'];
  return (filter != null)
      ? magazinesList
          .where((magazine) => magazine['content'].toLowerCase() == filter.toLowerCase())
          .toList()
      : magazinesList;
}

var magazines = {
  "status": "OK",
  "data": [
    {
      "_id": "5e632685d5a0e523a4d3ff0e",
      "title": "The Manipal Road",
      "content": "Annual",
      "date": "2015-3-1",
      "time": null,
      "imageLink": "https://i.ibb.co/g4pnPLm/March-2015-page-001.jpg",
      "pdfLink":
          "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/March%202015.pdf?alt=media&token=ee4302f3-9bb6-4805-93a0-0296e1ff6863"
    },
    {
      "_id": "5e632769d5a0e523a4d3ff0f",
      "title": "Over the Quadrangle",
      "content": "Annual",
      "date": "2015-12-1",
      "time": null,
      "imageLink": "https://i.ibb.co/hHcDBkh/December-2015-page-001.jpg",
      "pdfLink":
          "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/December%202015.pdf?alt=media&token=48b53b08-b638-46d8-b6c4-8c1e86dd94d7"
    },
    {
      "_id": "5e632822d5a0e523a4d3ff10",
      "title": "Year 60, and Counting",
      "content": "Annual",
      "date": "2017-3-1",
      "time": null,
      "imageLink": "https://i.ibb.co/VJRpQdq/Mag3-compressed-page-001.jpg",
      "pdfLink":
          "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/Mag3_compressed.pdf?alt=media&token=f0840a67-27a5-42f9-b1bd-d076fc07e6db"
    },
    {
      "_id": "5e632863d5a0e523a4d3ff11",
      "title": "Of Marks & Memories",
      "content": "Annual",
      "date": "2018-3-1",
      "time": null,
      "imageLink": "https://i.ibb.co/zXdHt0V/Document-page-001.jpg",
      "pdfLink":
          "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/Of%20Marks%20%26%20Memories%E2%80%94A%20Freshers%E2%80%99%20Guide%20to%20Manipal_compressed.pdf?alt=media&token=e2430ea0-7574-485f-9017-f45c43df8d58"
    },
    {
      "_id": "5e633a7cd5a0e523a4d3ff12",
      "title": "The Standard",
      "content": "Quarterly",
      "date": "2020-3-1",
      "time": null,
      "imageLink": "https://i.ibb.co/ZdnhZPk/The-standard-page-001.jpg",
      "pdfLink":
          "https://firebasestorage.googleapis.com/v0/b/mit-post-244d7.appspot.com/o/The%20standard.pdf?alt=media&token=6fe4efcc-27da-459d-ac12-2c30e62efff7"
    }
  ]
};

