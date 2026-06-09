
if __name__ == '__main__':
    n = int(input().strip())

    if n % 2 != 0 or (n >= 6 and n <= 20) :
        print('W')
    else:
        print('Not W')
