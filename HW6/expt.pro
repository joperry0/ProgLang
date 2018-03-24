/* auth: Jo Perry
   file: expt.pro
   mach: cse04
   desc: Write a Prolog predicate expt(M, N, E), where M, N
   			and E are integers, N >= 0, and E = M^N.
*/

/* 0^N -> E=0 */
expt(0, N, 0).
 
/* M^0 -> E=1 */
expt(M, 0, 1).

/* Otherwise, N is positive nonzero */
expt(M, N, E) :- \+ N < 0, J is N - 1,
			expt(M, J, F), E is M*F.
			/* prevent N < 0, multiply M by itself N times */