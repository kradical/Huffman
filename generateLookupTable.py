def main():
    print("char characterLookup[", end='')
    print(2 ** 8 - 1, end='')
    print("] = {")
    print("    ", end='')
    
    for x in range(2 ** 8 - 1):
        binary = format(x, '08b')

        if binary[:3] == '111':
            print("'A',", end='')
        elif binary[:3] == '010':
            print("'B',", end='')
        elif binary[:3] == '000':
            print("'C',", end='')
        elif binary[:4] == '1101':
            print("'D',", end='')
        elif binary[:4] == '1010':
            print("'E',", end='')
        elif binary[:4] == '1000':
            print("'F',", end='')
        elif binary[:4] == '0111':
            print("'G',", end='')
        elif binary[:4] == '0010':
            print("'H',", end='')
        elif binary[:4] == '1011':
            print("'I',", end='')
        elif binary[:4] == '0110':
            print("'J',", end='')
        elif binary[:5] == '11001':
            print("'K',", end='')
        elif binary[:5] == '00110':
            print("'L',", end='')
        elif binary[:5] == '10011':
            print("'M',", end='')
        elif binary[:5] == '11000':
            print("'N',", end='')
        elif binary[:5] == '00111':
            print("'O',", end='')
        elif binary[:5] == '10010':
            print("'P',", end='')
        else:
            print("-1,", end='')

    print("\n};")

if __name__ == '__main__':
    main()