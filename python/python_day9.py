# 1.주어진 문자열(공백 없이 쉼표로 구분되어 있음)을 가지고 아래 문제에 대한 프로그램을 작성하세요.

name = '이유덕,이재영,권종표,이재영,박민호,강상희,이재영,김지완,최승혁,이성연,박영서,박민호,전경헌,송정환,김재성,이유덕,전경헌'

# 1)김씨와 이씨는 각각 몇 명 인가요?
# 2)"이재영"이란 이름이 몇 번 반복되나요?
# 3)중복을 제거한 이름을 출력하세요.
# 4)중복을 제거한 이름을 오름차순으로 정렬하여 출력하세요.

lst_name = name.split(',')
print(lst_name)
#1)
import re
name_kim = re.findall("[김][\D]{2}", name)
name_lee = re.findall("[이][\D]{2}", name)
print('김씨와 이씨는 각각 {},{}명이다.'.format(len(name_kim),len(name_lee)))

#2)
res_lee = re.findall("이재영",name)
print("'이재영'은 {}번 반복된다.".format(len(res_lee)))

#3)
set_name = list(set(lst_name))
print(' 중복제거한 이름 출력: {}'.format(set_name))

#4)
sort_name = sorted(set_name)
print(' 중복제거한 이름을 오른차순으로 출력: {}'.format(sort_name))



# 2.n개의 정수를 가진 배열이 있다. 이 배열은 양의정수와 음의 정수를 모두 가지고 있다. 이제 당신은 이 배열을 좀 특별한 방법으로 정렬해야 한다.

# 정렬이 되고 난 후, 음의 정수는 앞쪽에 양의정수는 뒷쪽에 있어야 한다. 또한 양의정수와 음의정수의 순서에는 변함이 없어야 한다.

# 예. -1 1 3 -2 2 ans: -1 -2 1 3 2

n_list = list(map(int,input('정수 배열 입력').split()))
# ex = [-1, 1, 3, -2, 2]
plus = []
minus = []

for n in n_list:
  if n<0:
    minus.append(n)
  elif n>=0:
    plus.append(n)

ans = minus+plus
print(ans)


# 3.디지털 시계에 하루동안(00:00~23:59) 3이 표시되는 시간을 초로 환산하면 총 몇 초(second) 일까요?

# 디지털 시계는 하루동안 다음과 같이 시:분(00:00~23:59)으로 표시됩니다.

# 현재 시각 : 01시 3분 00초~59초이라면 -> 60초
# 현재 시각 : 03시 정각 -> 03시00분00초~3시59분59초 -> 1시간
# 13:00

# 00:00 (60초간 표시됨)
# 00:01
# 00:02
# ...
# 23:59
h=0
m=0

for i in range(1,25):
  if '3' in str(i):
    h += 1    # 단위 = 시간

  else :
    for j in range(1,61):
      if '3' in str(j):
        m += 1    # 단위 = 분

hap = h*60*60 + m*60
print(hap)


# 4.A씨는 두 개의 버전을 비교하는 프로그램을 작성해야 한다.

# 버전은 다음처럼 "." 으로 구분된 문자열이다.

# 버전 예) 1.0.0, 1.0.23, 1.1

# 두 개의 버전을 비교하는 프로그램을 작성하시오.

# 다음은 버전 비교의 예이다.

# 0.0.2 > 0.0.1
# 1.0.10 > 1.0.3
# 1.2.0 > 1.1.99
# 1.1 > 1.0.1

# twoVersion = list[input('두개의 버전 입력').split()]
twoVersion = ['1.1','1.0.1']

one = twoVersion[0].split('.')
two = twoVersion[1].split('.')

def which_is_big(a,b):    # 두수를 넣었을 때 큰값을 반환, 같으면 False반환하는 함수
  if int(a)>int(b):
    return '>'
  elif int(a)<int(b):
    return '<'
  else :
    return False


if len(one) == len(two) :     # 두버전의 .수가 같으면 버전의 길이만큼
  for i in range(len(one)):
    if which_is_big(one[i],two[i]) != False:    # 값이 False가 아니라면 더 큰 버전을 출력
      print(twoVersion[0]+which_is_big(one[i],two[i])+twoVersion[1])
      break
    else:     # 자릿수가 같다면 다음자리수 비교로 넘어감
      continue


elif len(one) > len(two) :      # 두버전의 .수가 다르면 더 길이가 짧은 버전의 길이만큼
  for i in range(len(two)):
        if which_is_big(one[i],two[i]) != False:
          print(twoVersion[0]+which_is_big(one[i],two[i])+twoVersion[1])
          break
        else:
          continue

elif len(one) < len(two) :
  for i in range(len(one)):
        if which_is_big(one[i],two[i]) != False:
          print(twoVersion[0]+which_is_big(one[i],two[i])+twoVersion[1])
          break
        else:
          continue




# 5.수 범위 입력받아 범위 내에 있는 각 숫자를 분해하여 곱한 결과의 전체합을 구하시오.
# 예로, 10~15까지의 각 숫자 분해하여 곱하기의 전체 합은 다음과 같다.


# 10 = 1 * 0 = 0
# 11 = 1 * 1 = 1
# 12 = 1 * 2 = 2
# 13 = 1 * 3 = 3
# 14 = 1 * 4 = 4
# 15 = 1 * 5 = 5

# 그러므로, 이 경우의 답은 0+1+2+3+4+5 = 15

# start, end = map(int,input().split())
# nums = [num for num in range(start,end+1)]
nums = [10, 11, 12, 13, 14, 15]
sum = 0
for num in nums:
  num=[n for n in str(num)]
  num_gop='*'.join(num)     # 각수들 사이에 *을 넣어줌 -> eval로 수식으로 바꿈.
  print('{} = {}'.format(num_gop,eval(num_gop)))
  sum += eval(num_gop)
print('답은 {}'.format(sum))