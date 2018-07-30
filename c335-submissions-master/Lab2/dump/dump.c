/***************************************************
 * dump.c
 *
 * This program prints out the different
 * representations of the same memory block created
 * in poly.c, and displays them in a memory dump.
 *
 * Authors: Addison Hunter, Yongtao Chu
 * Date created: 9/1/2016
 * Date last modified: 9/1/2016
 * Assignment: Lab 2
 * Part of: Programming memory dump
 ***************************************************
 */

// Function to print memory dumps
void dump_memory(void *p, int len)
{
  int i;
  //Prints column headers
  printf("address      char hexCh short     integer \
         float     doubleFloat\n");

  for (i = 0; i < len; i++) {
    //shorthand to store unsigned char for checking
    unsigned char val = *(unsigned char *)(p + i);

    //prints memory address
    printf("%8p  ", p + i);

    //checks if character is printable, else replaces
    //with '?'
    if ((val < 32) || (val >= 127))
      {
	printf("? ");
      }
    else
      {
        printf("%c ", val);
      }
    
    //prints hexadecimal character
    printf("0x%02x ", val);

    //Every 2 bytes, prints short value
    if ((i % 2) == 0)
      {
	printf("%+6hd ", *(short *)(p + i));
      }

    //Every 4 bytes, prints integer an float values
    if ((i % 4) == 0)
      {
	printf("%+11ld %+9.6e ", *(int *)(p + i), *(float *)(p + i));
      }

    //Every 8 bytes, prints double value
    if ((i % 8) == 0)
      {
	printf(" %+0.6e\n", *(double *)(p + i));
      }

    //Places newline on lines that aren't applicabe
    //for doubles
    else 
      {
	printf("\n");
      }
  }
}
