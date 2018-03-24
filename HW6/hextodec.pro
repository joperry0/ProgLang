/* auth: Jo Perry
   file: hextodec.pro
   mach: cse04
   desc: Write a Prolog predicate hextodec(H, D), where H is a 
   		list of hexadecimal digits and D is the equivalent
   		decimal number.
*/

initialization(consult('expt.pro')).

/* List of Hex numbers is empty */
hextodec([], D) :- D is 0.

/* List of Hex numbers not empty */
hextodec([X | Y], D) :- length(Y, N), /* get length of rem list */
						expt(16, N, E), /* 16^N -> E
						value(X, V),	/* base_10(X) -> V
						hextodec(Y, F), /* recurse on rem list */
						D is F + E*V.   /* res of recurse + E*V -> D */

/* Table converting base_16 to base_10 */
value(0, 0).
value(1, 1).
value(2, 2).
value(3, 3).
value(4, 4).
value(5, 5).
value(6, 6).
value(7, 7).
value(8, 8).
value(9, 9).
value(a, 10).
value(b, 11).
value(c, 12).
value(d, 13).
value(e, 14).
value(f, 15).

