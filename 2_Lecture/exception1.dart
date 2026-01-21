void main(){
  List<dynamic> l1 =  ['ers',11,20,40.4, true];
  int a=10,b=0,res;
  try{
    // print(l1[6]);
    res = a~/b;
    print(res);
  }on RangeError{print("RangeError");}
  catch(e){
    print(e);
  }
}