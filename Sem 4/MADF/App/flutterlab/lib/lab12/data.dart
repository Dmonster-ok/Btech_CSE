List<Map<String, String>> users = List.generate(100, (index) {
  return {
    "name": "User ${index + 1}",
    "phoneNumber": "555-010${index.toString().padLeft(2, '0')}",
    "photo": "https://picsum.photos/seed/${index+1}/350",
  };
});