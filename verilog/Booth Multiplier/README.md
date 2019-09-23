# Booth's Multiplie

To understand the Booth's algorithm for multiplication of numbers, let's take an example:

```
To multiply: 
	X = 123 and Y = -117

In binary representations (8-bit):
	X_2 = 01111011
	Y_2 = 10001011

Let X be the multliplier Q and Y be the multiplicand M, initialize an 8-bit binary number A with 0
and a 1-bit binary number Q_(-1) also with 0
	A = 00000000
	Q_(-1) = 0

Also the 2's complement of y:
	Y_2c = 01110101

The working of the algo is shown is the following table:

```
| Operation	|	A	| Q<sub>0</sub>	|	Q<sub>-1</sub>	|	Comment |
| --- | --- | --- | --- | --- |
| 			| 00000000	| 01111011	|	  0		| |	 
| A = A - M |  01110101 | | |  Q<sub>0</sub>Q<sub>-1</sub> = 10 |
| rt shift  |  00111010	| 10111101 | 1 | |
| 			| 00111010 | 	10111101 |	  1		| |	 
| rt shift  |  00011101	| 01011110 | 1 | Q<sub>0</sub>Q<sub>-1</sub> = 10 |
| 			| 	00011101	| 01011110 | 1 	| |	 
| A = A + M  |  10101000 | | |  Q<sub>0</sub>Q<sub>-1</sub> = 01 |
| rt shift  |  	11010100 | 00101111  | 0 | |
| 			| 011010100 | 00101111  | 0	| |	 
| A = A - M |  01001001 | | |  Q<sub>0</sub>Q<sub>-1</sub> = 10 |
| rt shift  |  00100100 |  10010111 | 1 | |
| 			| 00100100 |  10010111 | 1	| |	 
| rt shift  |  00010010	| 01001011 | 1 | |
| 			| 00010010	| 01001011 | 1 | |	 
| rt shift  |  00001001	| 00100101 | 1 | |
| 			| 00001001	| 00100101 | 1 | |	 
| rt shift  |  00000100	| 10010010 | 1 | |
| 			| 00000100	| 10010010 | 1 | |	 
| A = A + M |  10001111 | | |  Q<sub>0</sub>Q<sub>-1</sub> = 01 |
| rt shift  |  11000111	| 11001001 | 0 | |
| --- | --- | --- | --- | --- |










