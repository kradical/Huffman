#include <stdio.h>
#include <string.h>

// Alphabet and lookup tables
#define SIZE 3
#define MAXENCLENGTH 2

char alphabet[SIZE] = { 'A', 'B', 'C' };

char *lookupTable[SIZE] = { "0", "10", "11" };
int encodoedLengths[SIZE] = { 1, 2, 2 };

char lookupTree[7] = { -1, 'A', -1, -1, -1, 'B', 'C' };

// string to encode, buffer long enough to hold encoded string
void encode(char*, char*);
// string to decode, buffer long enough to hold encoded string
void decode(char*, char*);

int main(void) {
    char *initial = "AAAAAABAAAAAA";
    char encoded[strlen(initial) * MAXENCLENGTH + 1];
    char decoded[strlen(initial) + 1];
    
    encode(initial, encoded);

    printf("encoded: %s\n\n", encoded);

    decode(encoded, decoded);

    printf("decoded: %s\n\n", decoded);

    return 0;
}

// Assumes string contains characters in the range of alphabet
// Assumes buffer holds enough room for output
void encode(char *input, char *output) {
    while (*input) {
        int index = *input - 0x41;

        strcpy(output, lookupTable[index]);

        output += encodoedLengths[index];
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