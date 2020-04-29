// Function used to pass 'articlesAdapter' as a parameter
Function MarksAdapter() {
  return (api) => marksAdapter(api);
}

Function AttendanceAdapter() {
  return (api) => attendanceAdapter(api);
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> marksAdapter(api) {
  var map = api['internalMarks'];
  return {
    'updatedAt': map['updatedAt'] ?? "none",
    'subject': map['subject_name'] ?? "none",
    'sessional': map['sessional'] ?? "none",
    'assignment': map['assignment'] ?? "none",
    'lab': map['lab'] ?? "none",
  };
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> attendanceAdapter(api) {
  var map = api['attendance'];
  return {
    'subject': map['subjectName'] ?? "none",
    'total': map['totalClasses'] ?? "none",
    'attended': map['classesAttended'] ?? "none",
    'absent': map['classesAbsent'] ?? "none",
  };
}
