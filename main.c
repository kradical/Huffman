#include <string.h>
#include <stdint.h>

#define SIZE 16

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

void encode(char*, uint8_t*);
void decode(uint8_t*, int, char*);

int main(void) {
    char *initial = "A";
    int initialLength = 1;
    
    uint8_t encoded[initialLength]; // guarenteed to have enough room.
    memset(encoded, 0, initialLength);
    
    char decoded[initialLength + 1];

    encode(initial, encoded);
    decode(encoded, initialLength, decoded);

    return 0;
}

// Assumes string contains characters in the range of alphabet
// Assumes buffer holds enough room for output
void encode(char *input, uint8_t *output) {
    register uint8_t encodeIndex, index, value, valueSize;
    encodeIndex = 0;

    while (*input) {
        index = *input - 0x41;

        value = codeLookup[index];
        valueSize = codeSizes[index];

        *output |= value >> encodeIndex;
        encodeIndex += valueSize;

        if (encodeIndex >= 8) {
            encodeIndex -= 8;
            output += 1;
            *output |= value << (valueSize - encodeIndex);
        }

        input += 1;
    }
}

// Assumes a valid encoded string
// Assumes buffer holds enough room for output
void decode(uint8_t *input, int outputLength, char *output) {
    register uint8_t index, decodeIndex, letterIndex, valueSize;
    register char value;

    index = input[0];
    decodeIndex = 0;

    for (int i = 0; i < outputLength; i++) {
        value = characterLookup[index];
        letterIndex = value - 0x41;
        valueSize = codeSizes[letterIndex];

        output[i] = value;
        decodeIndex += valueSize;

        if (decodeIndex >= 8) {
            decodeIndex -= 8;
            input += 1;
        }

        index = (*input << decodeIndex) | (*(input + 1) >> (8 - decodeIndex));
    }

    output[outputLength] = '\0';
}
