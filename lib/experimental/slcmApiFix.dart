var attendance = [
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
];
var internalMarks = [
  {
    "subject_name": "ICS 241P MICROPROCESSORS",
    "status": false,
    "is_lab": false,
    "sessional": {"_one": "NA", "_two": "NA"},
    "assignment": {"_one": "NA", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "ICS 241T MICROPROCESSORS",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "12.50", "_two": "NA"},
    "assignment": {"_one": "2.50", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "ICS 242P DATABASE MANAGEMENT SYSTEMS",
    "status": false,
    "is_lab": false,
    "sessional": {"_one": "NA", "_two": "NA"},
    "assignment": {"_one": "NA", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "ICS 242T DATABASE MANAGEMENT SYSTEMS",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "19.50", "_two": "NA"},
    "assignment": {"_one": "5.00", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "ICS 243 OPERATING SYSTEMS",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "10.00", "_two": "NA"},
    "assignment": {"_one": "4.00", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "ICS 244 DESIGN AND ANALYSIS OF ALGORITHMS",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "20.00", "_two": "NA"},
    "assignment": {"_one": "5.00", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "IEE 241 SIGNALS AND SIGNAL PROCESSING",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "11.50", "_two": "NA"},
    "assignment": {"_one": "5.00", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  },
  {
    "subject_name": "IHS 241 ENGINEERING ECONOMICS & MANAGEMENT",
    "status": true,
    "is_lab": false,
    "sessional": {"_one": "14.00", "_two": "NA"},
    "assignment": {"_one": "0.00", "_two": "NA", "_three": "NA", "_four": "NA"},
    "lab": {"assessments": []},
    "updatedAt": -1
  }
];

/* LABEL LABS
*  - if 'attendanceElement' is a lab; set 'is_lab' property to 'true'
*/
_labelLabs_attendance(List<Object> attendance) {
  var newAttendance = new List();

  // given  an element,
  // find if there is another element with same 'subjectName' in the list
  findSimilar(object, list) {
    var similarElement = null;

    list.forEach((element) {
      // skip self
      if (element == object) return;

      if (element["subjectName"] == object["subjectName"]) {
        similarElement = element;
      }
    });

    return similarElement;
  }

  // given two similar elements, compare their 'totalClasses' property,
  // return the one with the lower 'totalClasses'
  findIfLab(element, similar) {
    return (int.parse(element['totalClasses']) <
            int.parse(similar['totalClasses']))
        ? true
        : false;
  }

  // given an element, rename its 'subjectName' property to 'subjectName' + 'Lab'
  renameToLab(element) {
    var newElement = Map.from(element);
    newElement['is_lab'] = true;
    return newElement;
  }

  processElement(attendance, element) {
    var newElement = Map.from(element);
    newElement['is_lab'] = false;

    var similar = findSimilar(newElement, attendance);
    if (similar == null) {
      // similar doesn't exist, theory subject, directly add to new list
      newAttendance.add(newElement);
    } else {
      // similar exists
      newAttendance.add((findIfLab(newElement, similar))
          ? renameToLab(newElement)
          : newElement);
    }
  }

  attendance.forEach((element) => processElement(attendance, element));
  return newAttendance;
}

/* LABEL MARKS
*  - if 'internalMarksElement' is a lab; set 'is_lab' property to 'true'
*/
_labelLabs_internalMarks(internalMarks) {
  var newInternalMarks = [...internalMarks];
  newInternalMarks.forEach((internalMarksElement) {
    if (internalMarksElement['subject_name'].contains(new RegExp(r'[0-9\(\)]+P'))) {
      internalMarksElement['is_lab'] = true;
    }
  });

  return newInternalMarks;
}

/* Find the corresponding 'internalMarks' element of an 'attendance' element
*   - find elements in 'internalMarks' with similar name as element
*/
findInternalMarksElement(attendanceObject, internalMarks) {
  var correspondingInternalMarksElement = null;
  var similarElements = [];

  // add elements in 'internalMarks' with similar name as element to 'similarElements'
  internalMarks.forEach((internalMarksElement) {
    if (internalMarksElement['subject_name']
        .contains(attendanceObject['subjectName'])) {
      similarElements.add(internalMarksElement);
    }
  });

  // select  that element which has 'is_lab' same as that of 'attendanceObject'
  similarElements.forEach((internalMarksElement) {
    if(internalMarksElement['is_lab'] == attendanceObject['is_lab']) {
      correspondingInternalMarksElement = internalMarksElement;
    }
  });

  return correspondingInternalMarksElement;
}

/* RENAME LABS
*  - find 'is_lab' elements and rename them to "Name" + "LAB"
*/
renameLabs(attendance) {
  var newAttendance = _labelLabs_attendance([...attendance]);
  newAttendance.forEach((attendanceElement) {
    if (attendanceElement['is_lab']) {
      attendanceElement['subjectName'] =
          attendanceElement['subjectName'] + " LAB";
    }
  });

  return newAttendance;
}

void main() {
  var newAttendance = _labelLabs_attendance(attendance);
  var newInternalMarks = _labelLabs_internalMarks(internalMarks);

  var similar = findInternalMarksElement(newAttendance[0], newInternalMarks);
  print(similar);
}
