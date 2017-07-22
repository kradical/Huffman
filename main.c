#include <stdio.h>
#include <string.h>
#include <stdint.h>

#define SIZE 16

#define max(a, b) \
   ({ __typeof__ (a) _a = (a); \
       __typeof__ (b) _b = (b); \
     _a > _b ? _a : _b; })

char alphabet[SIZE] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P' };

uint8_t codeLookup[SIZE] = { 
    0xE0, // A: 111
    0x40, // B: 010
    0x00, // C: 000
    0xD0, // D: 1101
    0xA0, // E: 1010
    0x80, // F: 1000
    0x70, // G: 0111
    0x20, // H: 0010
    0xB0, // I: 1011
    0x60, // J: 0110
    0xC8, // K: 11001
    0x30, // L: 00110
    0x98, // M: 10011
    0xC0, // N: 11000
    0x38, // O: 00111
    0x90, // P: 10010
};

uint8_t codeSizes[SIZE] = { 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5 };

char characterLookup[255] = {
    'C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','H','H','H','H','H','H','H','H','H','H','H','H','H','H','H','H','L','L','L','L','L','L','L','L','O','O','O','O','O','O','O','O','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','B','J','J','J','J','J','J','J','J','J','J','J','J','J','J','J','J','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','G','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','F','P','P','P','P','P','P','P','P','M','M','M','M','M','M','M','M','E','E','E','E','E','E','E','E','E','E','E','E','E','E','E','E','I','I','I','I','I','I','I','I','I','I','I','I','I','I','I','I','N','N','N','N','N','N','N','N','K','K','K','K','K','K','K','K','D','D','D','D','D','D','D','D','D','D','D','D','D','D','D','D','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A','A',
};

int encode(char*, uint8_t*);
void decode(uint8_t*, char*);

// Utility to print result of encoding
// Assumes little endian
void printBits(size_t size, void *ptr) {
    unsigned char *b = (unsigned char*) ptr;
    unsigned char byte;
    int i, j;

    for (i = size - 1; i >= 0; i--) {
        for (j = 7; j >= 0; j--) {
            byte = (b[i] >> j) & 1;
            printf("%u", byte);
        }
    }
}

int main(void) {
    char *initial = "POAJIK";
    // 10010 00111 111 0110 1011 11001

    int initialLength = strlen(initial);
    
    uint8_t encoded[initialLength]; // guarenteed to have enough room.
    memset(encoded, 0, initialLength);
    
    char decoded[initialLength + 1];

    printf("original: %s\n\n", initial);
    
    int encodedLength = encode(initial, encoded);

    printf("encoded (nearest byte): ");
    for (int i = 0; i < encodedLength; i++) {
        printBits(sizeof(uint8_t), &encoded[i]);
    }
    printf("\n\n");

    decode(encoded, decoded);

    printf("decoded: %s\n\n", decoded);

    return 0;
}

// Assumes string contains characters in the range of alphabet
// Assumes buffer holds enough room for output
int encode(char *input, uint8_t *output) {
    uint8_t encodeIndex = 0;
    int outputLength = 1;
    
    while (*input) {
        uint8_t index = *input - 0x41;
        
        uint8_t value = codeLookup[index];
        uint8_t valueSize = codeSizes[index];

        *output |= value >> encodeIndex;

        if (encodeIndex + valueSize < 8) {
            encodeIndex += valueSize;
        } else {
            output += 1;
            outputLength += 1;

            uint8_t leftoverSize = max(encodeIndex + valueSize - 8, 0);
            *output |= value << (valueSize - leftoverSize);

            encodeIndex = leftoverSize;
        }

        input += 1;
    }

    return outputLength;
}

// Assumes a valid encoded string
// Assumes buffer holds enough room for output
void decode(uint8_t *input, char *output) {
    while (*input) {
        // TODO get the index from input and next input
        // get the character from the loopup table
        // shift by correct amount based on length

        input += 1;
    }

    *output = '\0';
}