# Scraping

## Scraping과정
웹서버접속 -> 페이지소스가져오기 -> 뷰티풀숩 객체 생성 -> 원하는 내용 추출 
-> 전처리(정규식) -> 데이터분석 -> 시각화 -> 모델링(머신/딥러닝)-> 분류기, 문장생성기, ...(자연어 처리)

## 명령어
- url에서 이미지 가져오기
```
import urllib.request
url='사이트주소'
urllib.request.urlretrieve(url,'저장할 사진이름')
```

- url 페이지소스가져오기
```
urllib.request.urlopen('사이트주소')
```

- 파일(html)에서 소스가져오기
```
f=open('파일이름',encoding='utf-8')
soup=BeautifulSoup(f,'html.parser')     # 객체생성
```

- 뷰티풀숩 객체생성
```
from bs4 import BeautifulSoup
soup=BeautifulSoup(url, 'html.parser')
```

### 원하는 내용 추출
```
soup.select('태그')       # 리스트로 추출
soup.find_all('태그')     # 리스트로 나옴
soup.html.h1
soup.next_sibling       # 다음부분 추출
soup.previous_sibling   # 이전부분 추출
soup.find(id='')        # 태그를 모르고 속성으로 검색할때
.string         # 문자열만 추출
soup.select_one('태그')   # 하나만 추출
soup.select_one('div#meigen')   # 여기서 '#'은 id를 의미
soup.select_one('html li').string  # 조상태그 자손태그
soup.select_one('html > body > div > ul > li').string  # 부모태그 > 자식태그 (전부 입력해야함.)
soup.select("#ve-list > li.black")      # 클래스명은 .뒤에 붙여줌.
```
