# CLI (Command Line Interface):글자를 입력하여 컴퓨터에 명령을 내리는 방식

`$`: 프롬프트 => 현재 명령어를 받을 준비가 되었다. + 터미널 명령어다.

- `ctrl + c`: 취소 => Cancle
- `ctrl + v`: 클리어 => clear
- `↑↓`: 기존 명령어 불러오기
- `tab`: 자동 완성

## 명령어들
- `touch` : 파일 생성
- `ls` : 현재 폴더의 내용물을 보여줌(list)
- `ls -a`: 현재 폴더의 내용물을 모두 보여줌(-a all)
  - **참고**: 파일명 앞에 .이 있으면 숨겨짐.
- `rm` : 파일 삭제(remove)
- `rm -r` : 파일/폴더 모두 삭제 (`-r` recursively)
- `rm -rf` : 파일/폴더 모두 강제 삭제(`-f` force)
- `mkdir` : 폴더 생성 (make directory)
- `rmdir` : ~~빈 폴더 삭제~~ (remove directory)
- `cd` : 폴더 이동 (change directory)
- `cp` : 파일 복사 (copy)
- `mv` : 파일/폴더 이동 + 이름 바꾸기

## 경로 관련
|기호|의미|
|---|---|
|`.`|현재폴더|
|`..`|상위폴더|
|`~`|home dir|
|`/`|root dir|
|`.xxx`|`.`으로 시작==>숨김 파일/폴더|