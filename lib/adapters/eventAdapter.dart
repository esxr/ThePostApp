// Function used to pass 'articlesAdapter' as a parameter
Function EventAdapter() {
  return (map) => eventAdapter(map);
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> eventAdapter(map) {
  return {
    'title': map['title'] ?? "none",
    'author': map['clubName'] ?? "none",
    'content': map['content'] ?? "none",
    'imageURL': map['imageURL'] ?? "none",
    'timestamp': map['timestamp'] ?? "none",
    'link': map['formLink'] ?? "none"
  };
}
