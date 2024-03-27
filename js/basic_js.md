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

타입이 무엇인지?
`typeof`

배열은 무조건
`Array.isArray()`

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



        function sumAll(s,e){
        let output=0
        for(let i=s; i<=e; i++){
            output += i
        }
        return output
        }

        console.log(`1~200까지 합:${sumAll(1,100)}`)

```
function var_arg(...items){//매개변수 개수가 일정치 않을때
        console.log(items)
        }

        var_arg(10,20)
        var_arg(10,20,30,40,50)
```


```
function earnings(name, wage=9860, hours=40, year=new Date().getFullYear()){
console.log(name)
console.log(wage)
console.log(hours)
console.log(year)
}

earnings('홍길동') //기본시급:9860, 기본근무시간:40
earnings('임꺽정', 10000) //기본근무시간:40
earnings('이순신', 10000, 60)
```

콜백함수:매개변수로 전달되는 함수
```
function f(cb){
    cb()
}
function myPrint(){
    console.log('콜백함수가 호출되었습니다.')
}
f(myPrint)
```

`forEach`: 배열이 가지고 있는 함수, 배열 내부 요소를 이용해서 콜백함수 호출
```    
const num=[10,20,30]
num.forEach(function(value, index, array)){
    console.log(`${index}번째 요소: ${value}`)
})
```

//map 함수:배열이 가지고 있는 함수, 콜백 함수의 리턴 결과로 새로운 배열 생성
    const num2=[10,20,30]
    res=num2.map(function(value,index,array){
        return 2*value
    })
    console.log(res)


    //filter 함수:배열이 가지고 있는 함수, 콜백 함수의 리턴값이 true에 해당되는 값들로 새로운 배열 생성
    const num3=[10,20,30,40,50]
    res=num3.filter(function(value, index, array){
        return value%20==0
    })
    console.log(res)



//화살표 함수: => 화살표로 만든 함수
    const num4=[1,2,3,4,5,6]
    console.log(num4.filter((value)=>value%2==0))
    console.log(num4.map((value)=>value*2))


//clearTimeout(타이머id) : setTimeout함수로 설정한 타이머 제거
//clearInterval(타이머id) : setInterval함수로 설정한 타이머 제거

setTimeout(() => {
        console.log('5초후에 타이머 종료')
        clearInterval(intervalId)
    }, 5*1000)



