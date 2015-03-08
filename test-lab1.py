#!/usr/bin/env python3
import sys
def fib(n):
    a, b = 0, 1
    for i in range(n):
        a, b = b, a + b
    return a

def main():
    f = sys.stdin
    for line in f:
        _,index,value = line.replace("at ", ',').replace(" is: ",',').split(',')
        if(fib(int(index)) != int(value)):
            print("Error in test: index=" + index + ", value=" + value)
            return 1
        else:
            print("[Pass] fib(%d) = %d" % (int(index), int(value)))
    return 0

if __name__ == '__main__':
    sys.exit(main())
