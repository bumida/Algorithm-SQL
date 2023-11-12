test_case = int(input())
n = set(map(int, input().split(' ')))
test_case_m = int(input())
m = list(map(int, input().split(' ')))
for i in m:
    if i not in n:
        print('0')
    else: 
        print('1')
    
            
