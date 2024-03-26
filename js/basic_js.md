# jsp

## 명령어
```
if(조건){
        문장
        }else if(조건){
        문장
        }else{
        문장
        }
```

1<a<3
위는 안되고
1<a && a<3


숫자와 문자열 비교가능
1=='1' -> True


'안녕'.length

typeof('안녕')


console.log(`1+2는 ${1+2}입니다`)
-> 1+2는 3입니다

prompt(): 입력받음
```
inputData=prompt('message', '_default')
          alert(inputData)
```
```
const inputData=confirm('가입하시겠습니까?')
          alert(inputData)
```
확인 누르면 true 취소 누르면 false 리턴.


## 기본문법

false==0
-> true

false=='0'
-> true

''==false
-> true

''==0
-> true

[]==0
-> true

let(변수 재선언이 불가), var(변수 재선언이 가능) : 변수, 
const : 상수


x++: x출력 후에 x+1
++x: x+1한 후에 x출력


문자열을 숫자로 바꿀때
:
```
Number('123') == 123

```
숫자를 문자열로 바꿀ㄷ때
:
```
String(123) == '123'
```
```
123+'' == '123'
```
```
true+'' == 'true'
```

```
Boolean(0) == false
```

```
Boolean(NaN) == false
```

```
Boolean(null) == false
```

```
Boolean('') == false
```
1인치는 2.54cm

inch를 입력 -> 10 -> 25.4cm

break  문이 없어서 짝수 홀수 둘다 출력됨.:
```
switch(4%2){
    case 0:
    alert('짝수')
    case 1:
    alert('홀수')
}
```

default는 아무것도 아닌상황에 실행이 됨.:
```
switch('hello'){
    case 0:
    alert('짝수')
    break
    case 1:
    alert('홀수')
    break
    default:
    alert('숫자가 아닙니다')
    break
}
```

**삼항 연산자**

`a  ? b : c`

```
let x=1
res = (x>=0) ? '0이상의 숫자' : '0미만의 숫자'
alert(res)
```