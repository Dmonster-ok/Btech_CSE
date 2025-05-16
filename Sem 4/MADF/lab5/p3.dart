// replace in list
void main() {
  List<String> city = ["Delhi", "Mumbai", "Bangalore", "Hyderabad", "Ahmedabad"];
  print("Befor: $city");
  int idx = city.indexOf("Ahmedabad");
  if (idx != -1) {
    city[idx] = "Surat";
  }
  print("After: $city");
}