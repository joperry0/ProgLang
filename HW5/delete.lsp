;; delete . lsp
;; Author : Jo Perry
;; Description : This function accepts a value, a, and a stack, exp, deleting all occurances of
;;		the value, a, from the stack, exp.


(defun delete (a exp)
	(deletestack a exp nil)
)

(defun deletestack (a exp stack)
	(cond
		((null exp) (reverse stack))	;; check if exp is null, return stack if so
		((eq a (car exp)) (deletestack a (cdr exp) stack)) ;; check if a == (car exp), recurse on (cdr exp) if so
		(t (deletestack a (cdr exp)		;; otherwise, recurse on (cdr exp) with buffer = list
				(cons (if (not (symbolp (car exp))) ;; where list = ((deletestack a (car exp) nil) stack) if (car exp) is not a symbol
							(deletestack a (car exp) nil) 	;; otherwise list = ((car exp) stack)
							(car exp))
						stack)))
	)
)
