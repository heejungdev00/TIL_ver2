names = '이유덕,이재영,전이헌'.split(',')
kim = 0
lee = 0
for i in names:
    if i[0]=='김':
        print(i)
        kim += 1
    elif i[0] == '이':
        print(i)
        lee += 1
print(kim)
print(lee)