import sys

def openFile():
    strings = []
    numbers = []
    if len(sys.argv) == 2:
        filename = sys.argv[1]
        file = open(filename);
        for line in file:
             array_line = line.rstrip().split(';')
             strings.append(array_line[0])
             numbers.append(array_line[1])
        createLines(strings,numbers)

def createLines(strings,numbers):
    words = []
    digits = []
    final = {}
    i = 0
    for w in strings:
        words = w.split(" ")
        digits = numbers[i].split(" ")
        digits = map(int, digits)
        i = 1 + 1
        j = 0
        k = 1
        for s in words:
            if j  < len(digits):
                final[digits[j]] = s
                if k not in digits:
                    temp = k
                k = k + 1
            else:
                final[temp] = s
            j = j + 1
        print " ".join(final)
        final = {}

openFile()
