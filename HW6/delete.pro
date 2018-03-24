/* auth: Jo Perry
   file: delete.pro
   mach: cse04
   desc: Write a Prolog predicate delete2(Atom, List1, List2)
   that deletes all occurrences, no matter how
   deep, of Atom in List1 and returns the result in List2.
*/

initialization(consult(library(lists))).

/* H is not a list, A is H */
delete2(A, [H | L], K) :- atomic(A),
							atomic(H), 
							=(A, H),
							delete2(A, L, K).

/* H is not a list, A is not H */
delete2(A, [H | L], [H | K]) :- atomic(A), 
							atomic(H), 
							\+ =(A, H),
							delete2(A, L, K).

/* H is a list */
delete2(A, [H | L], [J | K]) :- atomic(A),
							\+ atomic(H),
							delete2(A, H, J),
							delete2(A, L, K).

/* List1 is empty */
delete2(_, [], []).
