/********************************************************
 * poly.c
 *
 * This program creates a Poly union, which allows for
 * a single block of memory to be represented as
 * different datatypes which overlap in the memory.
 * Used to create a memory dump in dump.c.
 *
 * Author: Addison Hunter, Yongtau Chu
 * Date created: 9/1/2016
 * Date last modified: 9/1/2016
 * Assignment: Lab 2
 * Part of: Programming a memory dump
 *******************************************************
 */

//Definition of union to display different datatypes with
//same block of memory
typedef union {
  unsigned char ccc[8];
  short sss[4];
  int iii[2];
  float fff[2];
  double ddd;
} Poly;

//Imports memory dump printer
extern void dump_memory(void *, int);

int main() {
  int i;
  Poly rawdata[6];

  //Assigns values for 6 different poly structs to be printed
  for (i = 0; i < 8; i++) rawdata[0].ccc[i] = 'a' + i;
  for (i = 0; i < 8; i++) rawdata[1].ccc[i] = 42 + i;
  for (i = 0; i < 4; i++) rawdata[2].sss[i] = 5280 + i;
  for (i = 0; i < 2; i++) rawdata[3].iii[i] = 'A' + i;
  rawdata[4].fff[0] = 6.022e+23;
  rawdata[4].fff[1] = 2.9979245833e+8 ;
  rawdata[5].ddd = 3.14159265358979323846264;

  //Prints memory dump
  dump_memory(rawdata, sizeof(rawdata));

  return 0;
}
