import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:thepostapp/api/slcmApiFix.dart';

Future<List<dynamic>> slcmApi() async {
  List<Object> _list = slcm['academicDetails'];
  Object academicDetails = _list[0];

  return academicDetails;
}

Future<List<dynamic>> slcmApiAttendance() async {
  List<Object> _list = slcm['academicDetails'];
  Map academicDetails = _list[0];

  // APPLY API FIX ('is_lab' not working, 'LAB' not present in subject name)
  var attendance = labelLabs_attendance(academicDetails['attendance']);

  return attendance;
}

Future<List<dynamic>> slcmApiMarks() async {
  List<Object> _list = slcm['academicDetails'];
  Map academicDetails = _list[0];

  // APPLY API FIX ('is_lab' not working)
  var marks = labelLabs_internalMarks(academicDetails['internalMarks']);

  return marks;
}

var slcm = {
    "message": "OK",
    "status": true,
    "updatedAt": 1587880879103,
    "semester": "IV",
    "section": "",
    "rollno": "",
    "admittedYear": "2018-2019",
    "teacherGuardianStatus": "Not Assigned",
    "teacherGuardianDetails": {
        "name": "",
        "phone": "",
        "email": ""
    },
    "academicDetails": [
        {
            "semester": "IV",
            "subjects": [
                "ICS 241P MICROPROCESSORS",
                "ICS 241T MICROPROCESSORS",
                "ICS 242P DATABASE MANAGEMENT SYSTEMS",
                "ICS 242T DATABASE MANAGEMENT SYSTEMS",
                "ICS 243 OPERATING SYSTEMS",
                "ICS 244 DESIGN AND ANALYSIS OF ALGORITHMS",
                "IEE 241 SIGNALS AND SIGNAL PROCESSING",
                "IHS 241 ENGINEERING ECONOMICS & MANAGEMENT"
            ],
            "marksStatus": true,
            "internalMarks": [
                {
                    "subject_name": "ICS 241P MICROPROCESSORS",
                    "status": false,
                    "is_lab": false,
                    "sessional": {
                        "_one": "NA",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "NA",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "ICS 241T MICROPROCESSORS",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "12.50",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "2.50",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "ICS 242P DATABASE MANAGEMENT SYSTEMS",
                    "status": false,
                    "is_lab": false,
                    "sessional": {
                        "_one": "NA",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "NA",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "ICS 242T DATABASE MANAGEMENT SYSTEMS",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "19.50",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "5.00",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "ICS 243 OPERATING SYSTEMS",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "10.00",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "4.00",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "ICS 244 DESIGN AND ANALYSIS OF ALGORITHMS",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "20.00",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "5.00",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "IEE 241 SIGNALS AND SIGNAL PROCESSING",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "11.50",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "5.00",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                },
                {
                    "subject_name": "IHS 241 ENGINEERING ECONOMICS & MANAGEMENT",
                    "status": true,
                    "is_lab": false,
                    "sessional": {
                        "_one": "14.00",
                        "_two": "NA"
                    },
                    "assignment": {
                        "_one": "0.00",
                        "_two": "NA",
                        "_three": "NA",
                        "_four": "NA"
                    },
                    "lab": {
                        "assessments": []
                    },
                    "updatedAt": -1
                }
            ],
            "attendanceStatus": true,
            "attendance": [
                {
                    "subjectName": "MICROPROCESSORS",
                    "totalClasses": "8",
                    "classesAttended": "6",
                    "classesAbsent": "2",
                    "updatedAt": -1
                },
                {
                    "subjectName": "MICROPROCESSORS",
                    "totalClasses": "25",
                    "classesAttended": "21",
                    "classesAbsent": "4",
                    "updatedAt": -1
                },
                {
                    "subjectName": "DATABASE MANAGEMENT SYSTEMS",
                    "totalClasses": "9",
                    "classesAttended": "8",
                    "classesAbsent": "1",
                    "updatedAt": -1
                },
                {
                    "subjectName": "DATABASE MANAGEMENT SYSTEMS",
                    "totalClasses": "27",
                    "classesAttended": "19",
                    "classesAbsent": "8",
                    "updatedAt": -1
                },
                {
                    "subjectName": "OPERATING SYSTEMS",
                    "totalClasses": "26",
                    "classesAttended": "15",
                    "classesAbsent": "11",
                    "updatedAt": -1
                },
                {
                    "subjectName": "DESIGN AND ANALYSIS OF ALGORITHMS",
                    "totalClasses": "25",
                    "classesAttended": "17",
                    "classesAbsent": "8",
                    "updatedAt": -1
                },
                {
                    "subjectName": "SIGNALS AND SIGNAL PROCESSING",
                    "totalClasses": "36",
                    "classesAttended": "26",
                    "classesAbsent": "10",
                    "updatedAt": -1
                },
                {
                    "subjectName": "ENGINEERING ECONOMICS & MANAGEMENT",
                    "totalClasses": "35",
                    "classesAttended": "24",
                    "classesAbsent": "11",
                    "updatedAt": -1
                }
            ]
        }
    ]
};