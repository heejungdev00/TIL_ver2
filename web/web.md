# html

## 기본 명령어
문자열 강조 : <strong> 문자열 </strong>
<br>
문자열 밑줄 : <U> 문자열 </U>  
<br>

제목(h6까지) : <h1>This is heading1</h1> 

한국어 지원 : `<meta charset="UTF-8">` 
줄바꿈 : `<br>`  
<br>
단락 줄바꿈 : `<p></p>` 

이미지 불러오기 : `<img src="coding.jpg" width="100%">`
- src,width : 속성임, 태그안에 넣어주고 순서는 x

## CSS란
: HTML언어로 웹페이지 내용을 표현한 뒤에, CSS언어로 내용을 꾸밈.

css로 더 정교하게 여백 추가 : `<p style="margin-top:50px"></p>` 

## 목차만들기
- `<li></li>` : list를 줄여서 **li**를 사용함.

- `<ul></ul>` : unordered list로 따로 만들어줌. 내부에 무조건 `<li>`태그가 들어감

- `<ol></ol>` : ordered list, 순서가 있는 목차로 만들어줌. 내부에 `<li>태그가 들어감

## 하이퍼링크만들기
- `<a href="사이트 주소 target="_blank""></a>`
  - `target="_blank"`=새로운 창에 웹페이지 생성
  - `title="html5 tooltip"` = tip처럼 볼 수 있음.
  
## 클:웹서버 통신방법
클 : 웹브라우저실행->주소입력->웹서버로이동(요청,request)->


웹서버는 index.html을 클라이언트에게 전달(응답,response)-> 클:웹브라우저가 해석
-> 해석결과를 화면에 출력


## 웹호스팅
: 웹서버 컴퓨터를 빌려주는 것

호스트(host) : 인터넷에 연결된 컴퓨터

# CSS
```
<style>
        a {
               color : orange;
               text-decoration:none;
        }
</style>
```
: a태그가 있는 곳의 색상을 모두 orange로 바꿈.

`text-decoration:none;` : 원래 링크를 달면 밑줄이 생기는데 이것을 없애줌.