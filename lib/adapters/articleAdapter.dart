// Function used to pass 'articlesAdapter' as a parameter
Function ArticleAdapter() {
  return (map) => articleAdapter(map);
}

// Api-unfiltered-data -----> Adapter -----> Filtered data to UI + any other changes in data
Map<String, Object> articleAdapter(map) {
  return {
    'title': map['title'] ?? "none",
    'author': map['author']['name'] ?? "none",
    'content': map['message'] ?? "none",
    'imageURL': map['featured_media'] ?? "none",
    'timestamp': map['timestamp'] ?? "none",
    'link': map['link'] ?? "none"
  };

  // return {
  //   'title': "none",
  //   'author': "none",
  //   'content': "none",
  //   'imageURL': "none",
  //   'timestamp': "none"
  // };
}
