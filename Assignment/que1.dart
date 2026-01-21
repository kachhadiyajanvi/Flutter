void main(){
  List<int> results = [];

  for(int i=2000; i<=3200;i++){
    if(i%7 == 0 && i%5 != 0){
      results.add(i);
    }
  }

  print(results.join(', '));
}