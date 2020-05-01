// Function used to pass 'articlesAdapter' as a parameter
Function MagazineAdapter() {
  return (map) => magazineAdapter(map);
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> magazineAdapter(map) {
  return {
    'title': map['title'] ?? "-",
    'date': map['date'] ?? "-",
    'imageLink': map['imageLink'] ?? "-",
    'pdfLink': map['pdfLink'] ?? "-",
  };
}
