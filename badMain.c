#include <string.h>

#define SIZE 16
#define MAXENCODEDLENGTH 5

char alphabet[SIZE] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };

char *lookupTable[SIZE] = { 
    "111", // A
    "010", // B
    "000", // C
    "1101", // D
    "1010", // E
    "1000", // F
    "0111", // G
    "0010", // H
    "1011", // I
    "0110", // J
    "11001", // K
    "00110", // L
    "10011", // M
    "11000", // N
    "00111", // O
    "10010", // P
};

int codeSizes[SIZE] = { 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 };

// 0 left, 1 right, z is indicator character.
char lookupTree[63] = { 
    'z',
    'z', 'z', 
    'z', 'z', 'z', 'z',
    'C', 'z', 'B', 'z', 'z', 'z', 'z', 'A',
    'z', 'z', 'H', 'z', 'z', 'z', 'J', 'G', 'F', 'z', 'E', 'I', 'z', 'D', 'z', 'z',
    'z', 'z', 'z', 'z', 'z', 'z', 'L', 'O', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'z', 'P', 'M', 'z', 'z', 'z', 'z', 'N', 'K', 'z', 'z', 'z', 'z', 'z', 'z',
};

void encode(char*, char*);
void decode(char*, char*);

int main(void) {
    char *initial = "A";
    int initialLength = 1;
    char encoded[initialLength * MAXENCODEDLENGTH + 1];
    char decoded[initialLength + 1];
    
    encode(initial, encoded);
    decode(encoded, decoded);

    return 0;
}

// Assumes string contains characters in the range of alphabet
// Assumes buffer holds enough room for output
void encode(char *input, char *output) {
    while (*input) {
        int index = *input - 0x41;

        strcpy(output, lookupTable[index]);

        output += codeSizes[index];
        input += 1;
    }
}

// Assumes a valid encoded string
// Assumes buffer holds enough room for output
void decode(char *input, char *output) {
    while (*input) {
        int index = 0;
        char next = lookupTree[index];
        
        while (next == 'z') {
            if (*input++ == '1') {
                index = index * 2 + 2;
                next = lookupTree[index];
            } else {
                index = index * 2 + 1;
                next = lookupTree[index];
            }
        }

        *output++ = next;
    }

    *output = '\0';
}