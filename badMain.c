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

// 0 left, 1 right
char lookupTree[63] = { 
    -1, 
    -1, -1, 
    -1, -1, -1, -1,
    'C', -1, 'B', -1, -1, -1, -1,  'A',
    -1,  -1, 'H', -1, -1, -1, 'J', 'G', 'F', -1, 'E', 'I', -1, 'D', -1, -1,
    -1,  -1,  -1, -1, -1, -1, 'L',  'O',  -1, -1,  -1,  -1, -1,  -1, -1, -1, -1, -1, 'P', 'M', -1, -1, -1, -1, 'N', 'K', -1, -1, -1, -1, -1, -1,
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
        
        while (next == -1) {
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