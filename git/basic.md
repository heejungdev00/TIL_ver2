# Git : 버전 관리 시스템

**VCS** : version controll system

**repository** : git이 관리하는 Dir

## git 시작
`$ git init` : 폴더에서 최초로 해주는것임. 깃이 버전관리를 해줌 
- 명령어프롬프트에 **(master)** 표시가 생김
- 터미널에 git- `tab`을 누르면 자동 완성 기능이 있음. 


## 커밋한 내용을 올릴 깃주소 저장하기

**참고:** 터미널키 여는법 : ``ctrl+` ``

```
$ git config --global user.name '본인 깃아이디'
```

```
$ git config --global user.email '본인 깃 이메일'
```

## git과 github의 개념

- **git** = '사진첩'

- **github** = '드라이브'




## git에 저장하는 법


***작업폴더 -> 스테이지 -> 커밋***

`add` 명령어 :작업폴더-> 스테이지

`commit` 명령어 : 스테이지 -> 커밋

```
$ touch 파일명
# 파일을 생성하면 옆에 U생김.

$ git add 파일명
# 파일 옆에 A생김.

$ git commit -m 'Message'
```


**참고 명령어**

- git 상태 확인:
`$ git status`

- 폴더의 모든 파일을 추가하는법:
`$ git add .`

- 과거 커밋 조회: `$ git log`

