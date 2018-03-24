/* auth: Jo Perry
   file: perfect.pro
   mach: cse04
   desc: Write a Prolog predicate perfect(N, F), which determines
   if integer N is perfect and if so, return it's list of factors F. If N is not perfect, the predicate fails. You may find the arithmetic operation M mod N to be useful.
*/

initialization(consult(library(lists))).

/* First call */
perfect(N, F) :- perfect(N, 1, 0, F).

/* End of iteration */
perfect(N, N, Sum, F):- N is Sum,
						append([], [], F).

/* Divisor is a factor of N */
perfect(N, Divisor, Sum, F) :-  \+ Divisor is N,
							NewDivisor is Divisor + 1,
							0 is mod(N, Divisor), 
							NewSum is Sum + Divisor,
							perfect(N, NewDivisor, NewSum, NewF),
							append([Divisor], NewF, F).

/* Divisor is not a factor of N */
perfect(N, Divisor, Sum, F) :- \+ Divisor is N,
							NewDivisor is Divisor + 1,
							perfect(N, NewDivisor, Sum, F).