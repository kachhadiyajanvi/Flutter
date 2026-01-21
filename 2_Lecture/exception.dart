void main(){
  List<dynamic> l1 =  ['ers',11,20,40.4, true];
  try{
    print(l1[6]);
  }catch(e){
    print(e);
  }
}