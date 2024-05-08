/* ex16.lp
   example 16.10 in Lee&Seshia book for EDAN15
   (with any errors existent in the book)
*/

/* Looking for WCET. BB time is ~size in bytes for this particular case */
//max:  x1 +  x2 +  x3 +  x4;
max: x1 + x2 + x3 + x4;

x1 = 1;
x4 = 1;
x1 = d12;
x2 = d12 + d32;
x2 = d23 + d24;
x3 = d23;
x3 = d32;
x4 = d24;


int x1,x2,x3,x4;
