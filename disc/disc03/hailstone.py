




def hailstone(n):
    print(n)
    if n == 1:
        return 1
    if n % 2 == 0:
        return hailstone(n / 2) + 1
    else:
        return hailstone((n * 3) + 1) + 1