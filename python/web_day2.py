# 1.10미만의 자연수에서 3과 5의 배수를 구하면 3,5,6,9이다. 이들의 총합은 23이다.
# 1000미만의 자연수에서 3,5의 배수의 총합을 구하라.

mul_3 = [str(n) for n in range(0,1000,3)]
mul_5 = [str(n) for n in range(0,1000,5)]

hap='+'.join(mul_3+mul_5)
print(eval(hap))

# 2.어떤 자연수 n이 있을 때, d(n)을 n의 각 자릿수 숫자들과 n 자신을 더한 숫자라고 정의하자.
# 예를 들어
# d(91) = 9 + 1 + 91 = 101
# 이 때, n을 d(n)의 제네레이터(generator)라고 한다. 위의 예에서 91은 101의 제네레이터이다.
# 어떤 숫자들은 하나 이상의 제네레이터를 가지고 있는데, 101의 제네레이터는 91 뿐 아니라 100도 있다.
# 그런데 반대로, 제네레이터가 없는 숫자들도 있으며, 이런 숫자를 인도의 수학자 Kaprekar가 셀프 넘버(self-number)라 이름 붙였다.
# 예를 들어 1,3,5,7,9,20,31 은 셀프 넘버 들이다.
# 1 이상이고 5000 보다 작은 모든 셀프 넘버들의 합을 구하라.

gener = []      # 5000보다 작은 제네레이터가 있는 숫자들의 리스트
self_num = []
res = 0     # 모든 셀프 넘버들의 합
num_lst= [str(num) for num in range(1,5000)]    # '1','2','3','4',...'4999'

def make_gene(num):   # 예를 들어 '10'을 넣으면 1+0+10= 11 을 리턴해주는 함수임.
  hap=0
  for n in num:
    hap+=int(n)

  return hap+int(num)

for s in num_lst:         # 5000보다 작은 제네레이터가 있는 숫자들의 리스트
  if make_gene(s)<5000:
    gener.append(make_gene(s))

for i in range(1,5000):     # 1-4999 중 gener에 없는 수를 self_num에 추가
  if i not in gener:
    self_num.append(i)

for self in self_num:
  res+=self

print(res)


# 3.1차원의 점들이 주어졌을 때, 그 중 가장 거리가 짧은 것의 쌍을 출력하는 함수를 작성하시오. (단 점들의 배열은 모두 정렬되어있다고 가정한다.)
# 예를들어 S={1, 3, 4, 8, 13, 17, 20} 이 주어졌다면, 결과값은 (3, 4)가 될 것이다.
S={1, 3, 4, 8, 13, 17, 20}
S=list(sorted(S))
distance= S[-1]

for i in range(len(S)):
  for j in range(len(S)-1):
    dis = S[j]-S[i]
    if 0 < dis < distance :
      distance=dis
      a=i
      b=j

print('결과값은 ({},{})이다.'.format(S[a],S[b]))



# 4.초보자 프로그래머 홍길동은 사용자가 입력한 양의정수(범위는 int)각 자리수를 더해 출력하는 프로그램을 만들고 싶어한다.
# ex) 5923의 결과는 5+9+2+3인 19이다 ex) 200의 결과는 2+0+0인 2이다 ex) 6719283의 결과는 6+7+1+9+2+8+3인 36이다.

user = int(input('양의정수 입력'))
# user = 5923
user_lst = [u for u in str(user)]
hap='+'.join(user_lst)
print('{}의 결과는 {}인 {}이다.'.format(user, hap, eval(hap)))