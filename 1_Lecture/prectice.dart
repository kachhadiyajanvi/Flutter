void main(){
  String ?str = "GLS";
  // Ternary opration
  print("welcome ${str == null ? "Guest" : str}");
  // double queation operater
  print("welcome ${str ?? 'Guest'}");
  // optional access or safe access
  print(str?.length);
  // null asseration
  print(str!.length);
}