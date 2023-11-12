test_case = int(input())

for _ in range(test_case):
    data = input()
    left_stack = []
    right_stack = []

    for char in data:
        if char == '-':
            if left_stack:
                left_stack.pop()
        elif char == '<':
            if left_stack:
                right_stack.append(left_stack.pop())
        elif char == '>':
            if right_stack:
                left_stack.append(right_stack.pop())
        else:
            left_stack.append(char)

    left_stack.extend(reversed(right_stack))
    print(''.join(left_stack))
