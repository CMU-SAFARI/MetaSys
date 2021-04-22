
// A C program to demonstrate buffer overflow
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <crosslayer.h>
/**
* _strcpy - Copies a string pointed to by @src, including the
*       	 terminating null byte, to a buffer pointed to by @dest.
* @dest: A buffer to copy the string to.
* @src: The source string to copy.
*
* Return: A pointer to the destination string @dest.
*/
char *_strcpy(char *dest, const char *src)
{
    int index = 0;

    while (src[index])
    {
        dest[index] = src[index];
        index++;
    }

    return (dest);
}

char *_strcpy_s(char *dest, const char *src)
{

    int index = 0;

    while (src[index])
    {
        dest[index] = src[index];
        index++;
    }

    return (dest);
}

int main(int argc, char *argv[])
{
    //atom_init(6, false);
    // Reserve 5 byte of buffer plus the terminating NULL.
    // should allocate 8 bytes = 2 double words,
    // To overflow, need more than 8 bytes...
    char buffer[5];  // If more than 8 characters input
                    // by user, there will be access
                    // violation, segmentation fault

    // a prompt how to execute the program...
    if (argc < 2)
    {
            printf("strcpy() NOT executed....\n");
            printf("Syntax: %s <characters>\n", argv[0]);
            exit(0);
    }

    // copy the user input to mybuffer, without any
    // bound checking a secure version is srtcpy_s()
    _strcpy(buffer, argv[1]);
    printf("buffer content= %s\n", buffer);

    // you may want to try strcpy_s()
    printf("strcpy() executed...\n");

    return 0;
}
