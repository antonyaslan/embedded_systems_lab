/* ex16.lp
   example 16.10 in Lee&Seshia book for EDAN15
   (with any errors existent in the book)
*/

/* Looking for WCET. BB time is ~size in bytes for this particular case */

//max: x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9;
min: 12 x0 + 12 x1 + 6 x2 + 24 x3 + 12 x4 + 36 x5 + 12 x6 + 12 x7 + 33 x8 + 21 x9;

x0 = 1;
x0 = d01;
x1 = d01 + d91;
x1 = d12 + d13;
x2 = d12;
x2 = 1;
x3 = d13;
x3 = d34 + d36;
x4 = d34;
x4 = d45 + d46;
x5 = d45;
x5 = d56;
x6 = d36 + d46 + d56;
x6 = d67 + d69;
x7 = d67;
x7 = d78 + d79;
x8 = d78;
x8 = d89;
x9 = d69 + d79 + d89;
x9 = d91;

x4 >= 5; 
x6 >= 5;

int x0,x1,x2,x3,x4,x5,x6,x7,x8,x9;

/* Min solution for 1 CET per BB

Actual values of the variables:
x0                              1
x1                              6
x2                              1
x3                              5
x4                              5
x5                              0
x6                              5
x7                              0
x8                              0
x9                              5
d01                             1
d91                             5
d12                             1
d13                             5
d34                             5
d36                             0
d45                             0
d46                             5
d56                             0
d67                             0
d69                             5
d78                             0
d79                             0
d89                             0

Max solution for 1 CET per BB

Actual values of the variables:
x0                              1
x1                             41
x2                              1
x3                             40
x4                             40
x5                             40
x6                             40
x7                             40
x8                             40
x9                             40
d01                             1
d91                            40
d12                             1
d13                            40
d34                            40
d36                             0
d45                            40
d46                             0
d56                            40
d67                            40
d69                             0
d78                            40
d79                             0
d89                            40

Min solution for x CET per BB

Actual values of the variables:
x0                              1
x1                             61
x2                              1
x3                             60
x4                             60
x5                              0
x6                             60
x7                              0
x8                              0
x9                             60
d01                             1
d91                            60
d12                             1
d13                            60
d34                            60
d36                             0
d45                             0
d46                            60
d56                             0
d67                             0
d69                            60
d78                             0
d79                             0
d89                             0



*/
