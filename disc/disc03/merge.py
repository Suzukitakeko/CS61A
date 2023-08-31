

def merge(n1, n2):
    if n1 == 0:
        return n2
    if n2 == 0:
        return n1

    a, b = n1 % 10, n2 % 10
    if a <= b:
        return a + 10 * merge(n1//10, n2)
    else:
        return b + 10 * merge(n1, n2//10)
    

print(merge(31, 42))
print(merge(21, 31))
print(merge(21, 0))