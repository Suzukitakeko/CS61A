def make_func_repeater(f, x):
    def repeat(n):
        if n == 1:
            return f(x)
        else:
            return f(repeat(n-1))
    
    return repeat

incr_1 = make_func_repeater(lambda x : x + 1, 1)


print(incr_1(2))
print(incr_1(5))
