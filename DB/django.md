# 장고다운받기

1. 명령 프롬프트(cmd) 열기
2. `cd \`(실행후 C드라이브에 있어야됨)
3. `mkdir venvs`
4. `cd venvs `
5. `python -m venv mysite(가상환경이름)` 
6. `cd mysite`
7. `cd Scripts`
8. `activate` 엔터(가상환경 진입)
9. `deactivate` 엔터(가상환경 종료)
10. `pip install django==4.0.3`
    - 가상환경에 장고 설치
    - 장고4.0 이용하여 웹사이트 제작

**웹사이트=장고프로젝트**

물리주소(www.naver.com):논리주소(ip)

대표번호:구내번호

회사대표전화번호:구내전화번호

**배치파일** 

path에 경로 지정 후 실행하면 어디에서든 가상환경이 실행됨.
```
@echo off
cd c:/projects/mysite
c:/venvs/mysite/scripts/activate
```
