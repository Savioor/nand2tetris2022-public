def divide(x, y):
    neg = False
    if x < 0:
        x = -x
        neg = not neg
    if y < 0:
        y = -y
        neg = not neg

    y_orig = y
    while y < x:
        y *= 2

    ans = 0
    str = ""
    while y >= y_orig:
        ans *= 2
        if y <= x:
            x -= y
            ans += 1
            str += "1"
        else:
            str += "0"
        y //= 2

    return -ans if neg else ans


print(divide(-18000, 6))
