# Galois 

Galois Field (GF(2^8)) Arithmetic Unit 

## Finite Field / Galois Field 

Field : A field is basically a set of elements which you can add , subtract , multiply and divide.

Finite Field : A Field with finite number of elements. 

A finite field is represented as follows : 

$GF(p^m)$

Where p is a prime number and m is some positive integer.

## $GF(2^8)$ Field

One such finite field is $GF(2^8)$ , which has 256 elements. This field is particularly important because it is used in the Advanced Encryption Standard (AES). 
GF(2) has only two elements {0,1} which makes it easy for computation, while having $2^8$ elements makes it easy to map each element to a byte.

### $GF(2^8)$ Arithmetic 

For some field $GF(p^m)$ the arithmetic operations are done as follows :

1. $a + b \equiv c \pmod{p}$ 
2. $a - b \equiv c \pmod{p}$
3. $a \cdot b \equiv c \pmod{p}$
4. $a \cdot a^{-1} \equiv 1 \pmod{p}$

But in the case of $GF(2^8)$ the elements in the field are not regular numbers but polynomials of the form $ax^7 + bx^6 + cx^5 + dx^4 + ex^3 + fx^2 + gx + h$ , where $a,b,c,d,e,f,g,h \in GF(2)$.

#### 1. Addition and Subtraction 

Consider two elements $A(x)$ and $B(x)$ , the addition and subtraction operations are done same as regular polynomial addition and subtraction , where each corresponding coefficients are added / subtracted and then reduced by $mod 2$. In the case of $GF(2^8)$ adding or subtracting coefficients results only in 0 or 1 , for this field the addition and subtraction give the same result. 
Since the resultant coefficients are reduced by $mod 2$ , we get resultant coefficient as 1 only when exactly one coefficient is 1. Hence the addition/subtraction operation is essentially a XOR.

$A(x) + B(x) \equiv C(x) \pmod 2$

#### 2. Multiplication 

In the case of regular numbers the multiplication is done normally and then the result is reduced by $mod p$ , but in the case of $GF(2^8)$ all the elements are polynomials so they are reduced by using 
$mod P(x)$ , where $P(x)$ is an irreducible polynomial.
For AES the irreducible polynomial used is $P(x) = x^8 + x^4 + x^3 + x + 1$

$A(x) \cdot B(x) \equiv C(x) \pmod{P(x)}$

This can be implemented by shifting bits and XORing them.

#### 3. Inversion 

The inverse of an element is generally found out by using the Extended Euclidean Algorithm but for the sake of simplicity I have used  Lagrange Theorem for this project.
Using Lagrange's theorem we can say that ,

If $a$ is a non-zero element of a finite group of order $n$ , then 

$a^{n} = e$

where $e$ is an identity element , in our case its 1.

Since our field has 256 elements , our multiplicative group will have 255 elements.

$a^{255} = 1$ where $a \in GF(2^8)$ and $a \neq 0$

$a \cdot a^{254} = 1$
$a^{-1} = a^{254}$









