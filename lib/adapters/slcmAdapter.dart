// Function used to pass 'articlesAdapter' as a parameter
Function SlcmAdapter() {
  return (api) => slcmAdapter(api);
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> slcmAdapter(map) {
  return {
    // common
    'updatedAt': map['updatedAt'] ?? "-",
    'is_lab': map['is_lab'] ?? "-",
    
    // attendance
    'subjectName': map['subjectName'] ?? "-",
    'total': map['totalClasses'] ?? "-",
    'attended': map['classesAttended'] ?? "-",
    'absent': map['classesAbsent'] ?? "-",

    // internal Marks
    'subject_name': map['subject_name'] ?? "-",
    'sessional': map['sessional'] ?? "-",
    'assignment': map['assignment'] ?? "-",
    'lab': map['lab'] ?? "-",
  };
}
