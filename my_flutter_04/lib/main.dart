
void main(){

  // do-while
  var input = 0;
  var sum = 0;

  do{
    input++;
    sum += input;
    if(input >= 10){
      input = 0;
    }
    print("sum : ${sum}");
  }while(input !=0);

  // break문 사용하기
  for(var i = 0; i < 10; i++){
    if(i == 7){
      break;
    }
    print("i : ${i}");
  }
print("===============================");
  // continue문 사용하기
  for(var i = 0; i < 10; i++){
    if(i == 7){
      continue;
    }
    print("i : ${i}");
  }
  
  // Switch and Case
  var command = 'OPEN';
  switch(command){
    case 'CLOSE':
      broadcase('영업종료...');
      break;
    case 'OPEN':
      broadcase('영업중...');
      break;
    default :
      broadcase('준비중...');
  } // end of switch

}// end of main

void broadcase(str){
  print('** $str**');
}