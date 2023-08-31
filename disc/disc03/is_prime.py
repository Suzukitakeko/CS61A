

def is_prime(n, divide):
    if n == 2:
        return True
    
    if divide == 2:
        return (n % 2 != 0)
    elif n % divide == 0:
        return False
    else:
        return is_prime(n, divide-1)
