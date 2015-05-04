import sys
import os

def open_doc():
    if len(sys.argv) == 2:
        if os.path.exists(sys.argv[1]):
            doc = open(sys.argv[1],"r")
            lines = doc.read()
            doc.close()
            get_results(lines)

def get_results(lines):
    array_lines = lines.split('\n')
    i=0
    while i < len(array_lines):
        if array_lines[i] != "":
            print(array_lines[i])
            print(int(array_lines[i]))
            #print(fib(int(array_lines[i])))
        i+=1

def fib(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fib(n-1) + fib(n-2)

open_doc()
