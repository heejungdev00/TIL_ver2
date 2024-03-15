# Git Advance

## GitHub 올리는 순서
 1. github에 원격저장소 생성 후 url 획득
```
$ git remote add origin 사이트주소
```
2. local파일을 github에 연결
3. push

## push 하는법
1.  git 수정
2.  add
3.  commit
4.  push
```
$ git push origin master
``` 

**참조 :** 
현재 터미널의 위치에 다운로드함.


**참조:**
터미널 옆 파랑색(master) : 현재 branch를 의미

## 기타명령어
- github에서 프로젝트가져오는 법
```
$ git clone 깃주소
```

- branch들 한줄로 보는 법
  
```
$ git log --one line
```


- branch 생성명령어
```
$ git branch a
```

- branch 변경명령어
```
$ git switch a
```
- branch 삭제 명령어
```
$ git branch -d b
```
## Merge(합병)
a와 master의 세계관을 합치는 것

1. FF(Fast Forward) : 빨리감기

a와 master가 같아짐.
```
$ git merge a
```
2. Auto Merge :다른 파일이 바뀐 경우. 똑같이 `merge a`. 자동으로 합쳐짐. 안나와지면 `esc :wq`

3. Conflict : 파일이 겹치는 경우(같은 파일이 바뀐경우) : branch를 생성하고 그곳으로 이동
```
$ git switch -c feature/pay
```


verba.it.corp@gmail.com