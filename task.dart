import 'dart:io';


class calculator{

  double sum (double x,double y){
    return x+y;
  }

   double sub (double x,double y){
    return x-y;
  }  

   double multp (double x,double y){
    return x*y;
  }

  double div(double x,double y){
    return x/y;
  }
}

void main(){

  calculator calc = calculator();
  
  double n1,n2;

  String operator;

  try{
  while(true){
  print("Enter the operator ");
  operator = stdin.readLineSync()!;
  if(operator == 'q'){
    break;
  }
  
  
  print("Enter the first number ");
  n1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number ");
  n2 = double.parse(stdin.readLineSync()!);

  double result = 0 ;
  switch(operator){
    case '+':{
    result = n1+n2;
      break;
  }
     case '-':{
     result = n1-n2;
      break;
     }
     case '*':{
    result = n1*n2;
      break;
     }
     case '/':{
     result = n1/n2;
      break;
     }
    default :{
      print('wrong opertaion');
    }
}
  print('The result = ${result}');
}
  }
  catch(e){
    print('Error : $e');
  }
}
