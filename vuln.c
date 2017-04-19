/* vuln.c --- 
 * 
 * Filename: vuln.c
 * Description: 
 * Author: guillaume Francqueville
 * Maintainer: guillaume Francqueville
 * Created: mar. avril 18 15:18:23 2017 (+0200)
 * Last-Updated: 
 *           By: 
 *     Update #: 0

/* Code: */

#include <stdio.h>

void vuln(){
  char buffer[50];

  scanf("%s",buffer);
  printf("variable buffer(%p) : %s\n",&buffer,buffer);
}


int main(){
  vuln();
}

/* vuln.c ends here */
