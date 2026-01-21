// parameter and return value
int add(int a,int b){
  return a+b;
}

// default parameter
int add1(int a, [int b=1]){
  return a+b;
}

//print Hello string parameter
void printHello(str, [String ? str1]){
  print("Hello $str! ${str1 ?? ""}");
}

//arrow function
var addition = (int a,int b) => a+b;

//named parameter function
int add2({required int a,required int b}) {
  print("a = $a and b = $b");
  return a+b;
}

// anoynoums function
var anony = (a,b){
  print("Anonymous function");
  return a+b;
};

void main(){
  print(add1(4,5));
  print(add1(4));
  printHello("Janvi", "Good Morning");
  printHello("Janvi");
  print(addition(4,2));
  print(add2(a:10, b:20));
  print(anony(1,2));
}